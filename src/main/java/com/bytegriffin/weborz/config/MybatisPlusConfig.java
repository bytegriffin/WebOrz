package com.bytegriffin.weborz.config;

import java.sql.SQLException;
import java.util.HashSet;
import java.util.Set;

import javax.sql.DataSource;

import org.apache.ibatis.plugin.Interceptor;
import org.apache.ibatis.session.AutoMappingBehavior;
import org.apache.ibatis.session.LocalCacheScope;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.type.JdbcType;
import org.mybatis.spring.annotation.MapperScan;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.condition.ConditionalOnBean;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceTransactionManagerAutoConfiguration;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.baomidou.mybatisplus.core.MybatisConfiguration;
import com.baomidou.mybatisplus.core.MybatisXMLLanguageDriver;
import com.baomidou.mybatisplus.extension.plugins.OptimisticLockerInterceptor;
import com.baomidou.mybatisplus.extension.plugins.PaginationInterceptor;
import com.baomidou.mybatisplus.extension.plugins.PerformanceInterceptor;
import com.baomidou.mybatisplus.extension.spring.MybatisSqlSessionFactoryBean;

@Configuration
@EnableAutoConfiguration(exclude={  
     DataSourceAutoConfiguration.class,  
     HibernateJpaAutoConfiguration.class,
     DataSourceTransactionManagerAutoConfiguration.class,  
})
@ConditionalOnBean(DataSource.class)
@EnableTransactionManagement
@MapperScan("com.bytegriffin.weborz.mapper")
public class MybatisPlusConfig {

	private static Logger log = LoggerFactory.getLogger(MybatisPlusConfig.class);

	@Bean
	public PaginationInterceptor paginationInterceptor() {
		PaginationInterceptor paginationInterceptor = new PaginationInterceptor();
		// 开启 PageHelper 的支持
		paginationInterceptor.setLocalPage(true);
		// paginationInterceptor.setDialectType("mysql");
		// paginationInterceptor.setSqlParserList(sqlParserList);
		return paginationInterceptor;
	}

	@Primary
	@Bean("sqlSessionFactory")
	public SqlSessionFactory sqlSessionFactory(@Qualifier("mysqlDataSource") DataSource dataSource) throws Exception {
		log.info("..................");
		MybatisSqlSessionFactoryBean sqlSessionFactory = new MybatisSqlSessionFactoryBean();
		sqlSessionFactory.setDataSource(dataSource);
		sqlSessionFactory.setFailFast(true);
		sqlSessionFactory.setTypeAliasesPackage(SiteConfig.MYBATIS_PACKAGES);
		sqlSessionFactory.setMapperLocations(new PathMatchingResourcePatternResolver().getResources(SiteConfig.MYBATIS_MAPPER_LOCATION));// 指定xml文件位置

		MybatisConfiguration configuration = new MybatisConfiguration();
		configuration.setDefaultScriptingLanguage(MybatisXMLLanguageDriver.class);
		configuration.setCacheEnabled(true);
		configuration.setLazyLoadingEnabled(true);
		configuration.setMultipleResultSetsEnabled(true);
		configuration.setUseColumnLabel(true);
		configuration.setUseGeneratedKeys(false);
		configuration.setAutoMappingBehavior(AutoMappingBehavior.PARTIAL);
		configuration.setSafeRowBoundsEnabled(true);
		configuration.setMapUnderscoreToCamelCase(true);
		configuration.setLocalCacheScope(LocalCacheScope.SESSION);
		configuration.setJdbcTypeForNull(JdbcType.OTHER);
		Set<String> lazyLoadTriggerMethods=new HashSet<String>();
		lazyLoadTriggerMethods.add("equals");
		lazyLoadTriggerMethods.add("clone");
		lazyLoadTriggerMethods.add("hashCode");
		lazyLoadTriggerMethods.add("toString");
		configuration.setLazyLoadTriggerMethods(lazyLoadTriggerMethods);
		configuration.setAggressiveLazyLoading(false);

		sqlSessionFactory.setConfiguration(configuration);
		sqlSessionFactory.setPlugins(new Interceptor[] {
				paginationInterceptor(),
				new PerformanceInterceptor(),
                new OptimisticLockerInterceptor()});
		return sqlSessionFactory.getObject();
	}

	@Bean(name = "transactionManager")
	public PlatformTransactionManager transactionManager(DataSource dataSource) throws SQLException {
		return new DataSourceTransactionManager(dataSource);
	}

//	@Bean
//	public H2KeyGenerator getH2KeyGenerator() {
//		return new H2KeyGenerator();
//	}
}
