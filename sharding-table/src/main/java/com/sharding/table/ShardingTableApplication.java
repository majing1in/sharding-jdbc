package com.sharding.table;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan("com.sharding.table.mapper")
@SpringBootApplication
public class ShardingTableApplication {

    public static void main(String[] args) {
        SpringApplication.run(ShardingTableApplication.class, args);
    }
    
}
