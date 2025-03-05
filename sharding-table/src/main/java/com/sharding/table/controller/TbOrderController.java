package com.sharding.table.controller;


import com.sharding.table.entity.TbOrder;
import com.sharding.table.service.ITbOrderService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.time.LocalDateTime;

/**
 * <p>
 * 订单表 前端控制器
 * </p>
 *
 * @author majing1in
 * @since 2025-03-05
 */
@RestController
@RequestMapping("/tb-order")
public class TbOrderController {

    @Resource
    private ITbOrderService ibOrderService;

    @PostMapping("/add")
    public boolean add(String orderId, LocalDateTime orderTime, Integer userId) {
        TbOrder tbOrder = new TbOrder();
        tbOrder.setOrderId(orderId);
        tbOrder.setOrderTime(orderTime);
        tbOrder.setUserId(userId);
        tbOrder.setOrderStatus(0);
        tbOrder.setTitle("title_" + userId);
        tbOrder.setPrice(1000);
        return ibOrderService.save(tbOrder);
    }

}
