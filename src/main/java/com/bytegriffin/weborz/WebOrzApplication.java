package com.bytegriffin.weborz;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
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