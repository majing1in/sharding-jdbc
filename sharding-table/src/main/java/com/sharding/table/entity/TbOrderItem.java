package com.sharding.table.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 订单项表
 * </p>
 *
 * @author majing1in
 * @since 2025-03-06
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("tb_order_item")
public class TbOrderItem implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "order_item_id", type = IdType.AUTO)
    private Integer orderItemId;

    @TableField("order_id")
    private String orderId;

    @TableField("product_id")
    private Integer productId;

    @TableField("quantity")
    private Integer quantity;

}
