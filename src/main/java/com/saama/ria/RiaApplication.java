package com.saama.ria;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = { "com" })
public class RiaApplication {

	public static void main(String[] args) {
		SpringApplication.run(RiaApplication.class, args);
	}
}
