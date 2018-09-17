package com.java.manage;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.java.manage.dao")
public class CompanyShowManageApplication {

    public static void main(String[] args) {
        SpringApplication.run(CompanyShowManageApplication.class, args);
    }
}
