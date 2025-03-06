package com.sharding.table.mapper;

import com.sharding.table.entity.TbOrder;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Set;

/**
 * <p>
 * 订单表 Mapper 接口
 * </p>
 *
 * @author majing1in
 * @since 2025-03-05
 */
public interface TbOrderMapper extends BaseMapper<TbOrder> {

    List<TbOrder> getTbOrderV1(@Param("startDateTime") LocalDateTime startDateTime, @Param("endDateTime") LocalDateTime endDateTime);

    List<TbOrder> getTbOrderV2(@Param("startDateTime") LocalDateTime startDateTime, @Param("endDateTime") LocalDateTime endDateTime);

}
