package com.bytegriffin.weborz;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ExitCodeGenerator;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceTransactionManagerAutoConfiguration;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("spring")
//@ComponentScan(basePackages = {"com.bytegriffin.controller"})
public class WebOrzApplication  extends SpringBootServletInitializer{

	private static Logger log = LoggerFactory.getLogger(WebOrzApplication.class);

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(WebOrzApplication.class);
	}

	public static void main(String[] args) {
		System.out.println("------------SpringBoot开始启动------------------");
		SpringApplication.run(WebOrzApplication.class, args);
		System.out.println("------------SpringBoot启动完成------------------");
	}

}
