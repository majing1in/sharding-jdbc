package com.sharding.table;

import com.alibaba.fastjson.JSON;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.sharding.table.entity.City;
import com.sharding.table.entity.TbOrder;
import com.sharding.table.mapper.TbOrderMapper;
import com.sharding.table.service.ICityService;
import com.sharding.table.service.ITbOrderService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.annotation.Resource;
import java.text.ParseException;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Random;

@SpringBootTest
@RunWith(SpringRunner.class)
public class Test01 {

    @Resource
    private ITbOrderService ibOrderService;

    @Resource
    private TbOrderMapper tbOrderMapper;

    @Resource
    private ICityService iCityService;

    @Test
    public void test01() throws ParseException {
        for (int i = 0; i < 1; i++) {
            try {
                // 创建Random对象
                Random random = new Random();
                // 生成0到12之间的随机整数
                int randomNumber1 = random.nextInt(12) + 1; // nextInt(13)生成0到12之间的随机数
                int randomNumber2 = random.nextInt(29) + 1; // nextInt(13)生成0到12之间的随机数
                // 将随机整数转换为字符串
                String randomString1 = String.format("%02d", randomNumber1);
                String randomString2 = String.format("%02d", randomNumber2);
                // 打印随机字符串（可选）
                System.out.println("Random String1: " + randomString1);
                System.out.println("Random String2: " + randomString2);

                String yyyyMMdd = "2023" + randomString1 + randomString2;
                String yyyyMMddHHmmss = "2023-" + randomString1 + "-" + randomString2 + " 00:00:00";

                DateTimeFormatter customFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
                LocalDateTime customDateTime = LocalDateTime.parse(yyyyMMddHHmmss, customFormatter);
                System.out.println("自定义格式转换结果: " + customDateTime);

                TbOrder tbOrder = new TbOrder();
                tbOrder.setOrderId(yyyyMMdd + "_x_" + random.nextInt(1000) + random.nextInt(1000) + random.nextInt(1000));
                tbOrder.setOrderTime(customDateTime);
                tbOrder.setUserId(1024);
                tbOrder.setOrderStatus(0);
                tbOrder.setTitle("title_" + yyyyMMdd);
                tbOrder.setPrice(1000);
                ibOrderService.save(tbOrder);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    @Test
    public void test02() throws ParseException {
        DateTimeFormatter customFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        LocalDateTime l1 = LocalDateTime.parse("2023-01-01 00:00:00", customFormatter);
        LocalDateTime l2 = LocalDateTime.parse("2023-12-31 00:00:00", customFormatter);
        long currentTimeMillis = System.currentTimeMillis();
        List<TbOrder> tbOrderList = ibOrderService.list(
                new LambdaQueryWrapper<TbOrder>()
//                        .le(TbOrder::getOrderTime, "2023-02-01 00:00:00")
//                        .ge(TbOrder::getOrderTime, "2023-05-31 00:00:00")
                        .between(TbOrder::getOrderTime, l1, l2)
                        .orderByDesc(TbOrder::getOrderTime)
//                        .last("limit 0, 10")
        );
        System.out.println("总耗时：" + ((System.currentTimeMillis() - currentTimeMillis) / 1000) + "s");
        System.out.println("总条数：" + tbOrderList.size());
    }

    @Test
    public void test03() throws ParseException {
        Random random = new Random();
        City city = new City();
        city.setCityId(random.nextInt(100000));
        city.setCityName("芝加哥");
        city.setProvince("ZhiJiaGe");
        city.setCountry("美国");
        iCityService.save(city);
    }

    @Test
    public void test04() throws ParseException {
        List<City> list = iCityService.list();
        System.out.println(JSON.toJSONString(list));
    }

    @Test
    public void test05() throws ParseException {
        DateTimeFormatter customFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        LocalDateTime l1 = LocalDateTime.parse("2023-06-01 00:00:00", customFormatter);
        LocalDateTime l2 = LocalDateTime.parse("2023-07-31 00:00:00", customFormatter);
        // List<TbOrder> tbOrderList = tbOrderMapper.getTbOrderV1(l1, l2);
        List<TbOrder> tbOrderList = tbOrderMapper.getTbOrderV2(l1, l2);
        // System.out.println(JSON.toJSONString(tbOrderList));
        System.out.println("总条数：" + tbOrderList.size());
    }

}
