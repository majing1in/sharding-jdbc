package com.sharding.table.service.impl;

import com.sharding.table.entity.City;
import com.sharding.table.mapper.CityMapper;
import com.sharding.table.service.ICityService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

/**
 * <p>
 * 城市表 服务实现类
 * </p>
 *
 * @author majing1in
 * @since 2025-03-06
 */
@Service
public class CityServiceImpl extends ServiceImpl<CityMapper, City> implements ICityService {

}
