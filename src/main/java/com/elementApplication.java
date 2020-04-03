package com;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import tk.mybatis.spring.annotation.MapperScan;
@MapperScan(basePackages = "com.mapper")
@SpringBootApplication
public class elementApplication {

	public static void main(String[] args) {
		SpringApplication.run(elementApplication.class, args);
	}

}
