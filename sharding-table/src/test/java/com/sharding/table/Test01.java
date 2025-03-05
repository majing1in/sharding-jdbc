package com.sharding.table;

import com.sharding.table.entity.TbOrder;
import com.sharding.table.service.ITbOrderService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Date;
import java.util.Random;

@SpringBootTest
@RunWith(SpringRunner.class)
public class Test01 {

    @Resource
    private ITbOrderService ibOrderService;

    @Test
    public void test01() throws ParseException {
        // 创建Random对象
        Random random = new Random();
        // 生成0到12之间的随机整数
        int randomNumber1 = random.nextInt(12) + 1; // nextInt(13)生成0到12之间的随机数
        int randomNumber2 = random.nextInt(30); // nextInt(13)生成0到12之间的随机数
        // 将随机整数转换为字符串
        String randomString1 = String.format("%02d", randomNumber1);
        String randomString2 = String.format("%02d", randomNumber2);
        // 打印随机字符串（可选）
        System.out.println("Random String1: " + randomString1);
        System.out.println("Random String2: " + randomString2);

        String yyyyMMdd = "2023" + randomString1 + randomString2;
        String yyyyMMddHHmmss = "2023-" + randomString1 + "-" + randomString2 + " 00:00:00";
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
        Date orderDate = dateFormat.parse(yyyyMMddHHmmss);

        TbOrder tbOrder = new TbOrder();
        tbOrder.setOrderId("order_id_" + yyyyMMdd);
        tbOrder.setOrderTime(LocalDateTime.ofInstant(orderDate.toInstant(), ZoneId.of("Asia/Shanghai")));
        tbOrder.setUserId(1024);
        tbOrder.setOrderStatus(0);
        tbOrder.setTitle("title_" + yyyyMMdd);
        tbOrder.setPrice(1000);
        ibOrderService.save(tbOrder);
    }

}
