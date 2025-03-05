package com.sharding.table.service.impl;

import com.sharding.table.entity.TbOrder;
import com.sharding.table.mapper.TbOrderMapper;
import com.sharding.table.service.ITbOrderService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 订单表 服务实现类
 * </p>
 *
 * @author majing1in
 * @since 2025-03-05
 */
@Service
public class TbOrderServiceImpl extends ServiceImpl<TbOrderMapper, TbOrder> implements ITbOrderService {

}
