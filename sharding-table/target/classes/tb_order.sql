/*
 Navicat Premium Data Transfer

 Source Server         : SaaS开发环境-写库
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : 10.0.0.22:3306
 Source Schema         : malldb_9qqhed

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 05/03/2025 17:36:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order`
(
    `order_id`     varchar(26) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL COMMENT '主键',
    `user_id`      int(10) UNSIGNED                                              NOT NULL DEFAULT 0 COMMENT '用户id',
    `price`        int(10) UNSIGNED                                              NOT NULL DEFAULT 0 COMMENT '价格（单位：分）',
    `order_status` tinyint(3) UNSIGNED                                           NOT NULL DEFAULT 1 COMMENT '订单状态(1:待付款,2:已付款,3:已取消)',
    `order_time`   datetime                                                      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `title`        varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '订单标题',
    PRIMARY KEY (`order_id`) USING BTREE,
    INDEX `idx_user_id` (`user_id`) USING BTREE,
    INDEX `idx_order_time` (`order_time`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '订单表'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_order_202301
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_202301`;
CREATE TABLE `tb_order_202301`
(
    `order_id`     varchar(26) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL COMMENT '主键',
    `user_id`      int(10) UNSIGNED                                              NOT NULL DEFAULT 0 COMMENT '用户id',
    `price`        int(10) UNSIGNED                                              NOT NULL DEFAULT 0 COMMENT '价格（单位：分）',
    `order_status` tinyint(3) UNSIGNED                                           NOT NULL DEFAULT 1 COMMENT '订单状态(1:待付款,2:已付款,3:已取消)',
    `order_time`   datetime                                                      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `title`        varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '订单标题',
    PRIMARY KEY (`order_id`) USING BTREE,
    INDEX `idx_user_id` (`user_id`) USING BTREE,
    INDEX `idx_order_time` (`order_time`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '订单表'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_order_202302
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_202302`;
CREATE TABLE `tb_order_202302`
(
    `order_id`     varchar(26) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL COMMENT '主键',
    `user_id`      int(10) UNSIGNED                                              NOT NULL DEFAULT 0 COMMENT '用户id',
    `price`        int(10) UNSIGNED                                              NOT NULL DEFAULT 0 COMMENT '价格（单位：分）',
    `order_status` tinyint(3) UNSIGNED                                           NOT NULL DEFAULT 1 COMMENT '订单状态(1:待付款,2:已付款,3:已取消)',
    `order_time`   datetime                                                      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `title`        varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '订单标题',
    PRIMARY KEY (`order_id`) USING BTREE,
    INDEX `idx_user_id` (`user_id`) USING BTREE,
    INDEX `idx_order_time` (`order_time`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '订单表'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_order_202303
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_202303`;
CREATE TABLE `tb_order_202303`
(
    `order_id`     varchar(26) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL COMMENT '主键',
    `user_id`      int(10) UNSIGNED                                              NOT NULL DEFAULT 0 COMMENT '用户id',
    `price`        int(10) UNSIGNED                                              NOT NULL DEFAULT 0 COMMENT '价格（单位：分）',
    `order_status` tinyint(3) UNSIGNED                                           NOT NULL DEFAULT 1 COMMENT '订单状态(1:待付款,2:已付款,3:已取消)',
    `order_time`   datetime                                                      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `title`        varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '订单标题',
    PRIMARY KEY (`order_id`) USING BTREE,
    INDEX `idx_user_id` (`user_id`) USING BTREE,
    INDEX `idx_order_time` (`order_time`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '订单表'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_order_202304
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_202304`;
CREATE TABLE `tb_order_202304`
(
    `order_id`     varchar(26) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL COMMENT '主键',
    `user_id`      int(10) UNSIGNED                                              NOT NULL DEFAULT 0 COMMENT '用户id',
    `price`        int(10) UNSIGNED                                              NOT NULL DEFAULT 0 COMMENT '价格（单位：分）',
    `order_status` tinyint(3) UNSIGNED                                           NOT NULL DEFAULT 1 COMMENT '订单状态(1:待付款,2:已付款,3:已取消)',
    `order_time`   datetime                                                      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `title`        varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '订单标题',
    PRIMARY KEY (`order_id`) USING BTREE,
    INDEX `idx_user_id` (`user_id`) USING BTREE,
    INDEX `idx_order_time` (`order_time`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '订单表'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_order_202305
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_202305`;
CREATE TABLE `tb_order_202305`
(
    `order_id`     varchar(26) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL COMMENT '主键',
    `user_id`      int(10) UNSIGNED                                              NOT NULL DEFAULT 0 COMMENT '用户id',
    `price`        int(10) UNSIGNED                                              NOT NULL DEFAULT 0 COMMENT '价格（单位：分）',
    `order_status` tinyint(3) UNSIGNED                                           NOT NULL DEFAULT 1 COMMENT '订单状态(1:待付款,2:已付款,3:已取消)',
    `order_time`   datetime                                                      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `title`        varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '订单标题',
    PRIMARY KEY (`order_id`) USING BTREE,
    INDEX `idx_user_id` (`user_id`) USING BTREE,
    INDEX `idx_order_time` (`order_time`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '订单表'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_order_202306
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_202306`;
CREATE TABLE `tb_order_202306`
(
    `order_id`     varchar(26) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL COMMENT '主键',
    `user_id`      int(10) UNSIGNED                                              NOT NULL DEFAULT 0 COMMENT '用户id',
    `price`        int(10) UNSIGNED                                              NOT NULL DEFAULT 0 COMMENT '价格（单位：分）',
    `order_status` tinyint(3) UNSIGNED                                           NOT NULL DEFAULT 1 COMMENT '订单状态(1:待付款,2:已付款,3:已取消)',
    `order_time`   datetime                                                      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `title`        varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '订单标题',
    PRIMARY KEY (`order_id`) USING BTREE,
    INDEX `idx_user_id` (`user_id`) USING BTREE,
    INDEX `idx_order_time` (`order_time`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '订单表'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_order_202307
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_202307`;
CREATE TABLE `tb_order_202307`
(
    `order_id`     varchar(26) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL COMMENT '主键',
    `user_id`      int(10) UNSIGNED                                              NOT NULL DEFAULT 0 COMMENT '用户id',
    `price`        int(10) UNSIGNED                                              NOT NULL DEFAULT 0 COMMENT '价格（单位：分）',
    `order_status` tinyint(3) UNSIGNED                                           NOT NULL DEFAULT 1 COMMENT '订单状态(1:待付款,2:已付款,3:已取消)',
    `order_time`   datetime                                                      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `title`        varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '订单标题',
    PRIMARY KEY (`order_id`) USING BTREE,
    INDEX `idx_user_id` (`user_id`) USING BTREE,
    INDEX `idx_order_time` (`order_time`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '订单表'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_order_202308
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_202308`;
CREATE TABLE `tb_order_202308`
(
    `order_id`     varchar(26) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL COMMENT '主键',
    `user_id`      int(10) UNSIGNED                                              NOT NULL DEFAULT 0 COMMENT '用户id',
    `price`        int(10) UNSIGNED                                              NOT NULL DEFAULT 0 COMMENT '价格（单位：分）',
    `order_status` tinyint(3) UNSIGNED                                           NOT NULL DEFAULT 1 COMMENT '订单状态(1:待付款,2:已付款,3:已取消)',
    `order_time`   datetime                                                      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `title`        varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '订单标题',
    PRIMARY KEY (`order_id`) USING BTREE,
    INDEX `idx_user_id` (`user_id`) USING BTREE,
    INDEX `idx_order_time` (`order_time`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '订单表'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_order_202309
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_202309`;
CREATE TABLE `tb_order_202309`
(
    `order_id`     varchar(26) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL COMMENT '主键',
    `user_id`      int(10) UNSIGNED                                              NOT NULL DEFAULT 0 COMMENT '用户id',
    `price`        int(10) UNSIGNED                                              NOT NULL DEFAULT 0 COMMENT '价格（单位：分）',
    `order_status` tinyint(3) UNSIGNED                                           NOT NULL DEFAULT 1 COMMENT '订单状态(1:待付款,2:已付款,3:已取消)',
    `order_time`   datetime                                                      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `title`        varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '订单标题',
    PRIMARY KEY (`order_id`) USING BTREE,
    INDEX `idx_user_id` (`user_id`) USING BTREE,
    INDEX `idx_order_time` (`order_time`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '订单表'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_order_202310
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_202310`;
CREATE TABLE `tb_order_202310`
(
    `order_id`     varchar(26) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL COMMENT '主键',
    `user_id`      int(10) UNSIGNED                                              NOT NULL DEFAULT 0 COMMENT '用户id',
    `price`        int(10) UNSIGNED                                              NOT NULL DEFAULT 0 COMMENT '价格（单位：分）',
    `order_status` tinyint(3) UNSIGNED                                           NOT NULL DEFAULT 1 COMMENT '订单状态(1:待付款,2:已付款,3:已取消)',
    `order_time`   datetime                                                      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `title`        varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '订单标题',
    PRIMARY KEY (`order_id`) USING BTREE,
    INDEX `idx_user_id` (`user_id`) USING BTREE,
    INDEX `idx_order_time` (`order_time`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '订单表'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_order_202311
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_202311`;
CREATE TABLE `tb_order_202311`
(
    `order_id`     varchar(26) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL COMMENT '主键',
    `user_id`      int(10) UNSIGNED                                              NOT NULL DEFAULT 0 COMMENT '用户id',
    `price`        int(10) UNSIGNED                                              NOT NULL DEFAULT 0 COMMENT '价格（单位：分）',
    `order_status` tinyint(3) UNSIGNED                                           NOT NULL DEFAULT 1 COMMENT '订单状态(1:待付款,2:已付款,3:已取消)',
    `order_time`   datetime                                                      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `title`        varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '订单标题',
    PRIMARY KEY (`order_id`) USING BTREE,
    INDEX `idx_user_id` (`user_id`) USING BTREE,
    INDEX `idx_order_time` (`order_time`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '订单表'
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for tb_order_202312
-- ----------------------------
DROP TABLE IF EXISTS `tb_order_202312`;
CREATE TABLE `tb_order_202312`
(
    `order_id`     varchar(26) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL COMMENT '主键',
    `user_id`      int(10) UNSIGNED                                              NOT NULL DEFAULT 0 COMMENT '用户id',
    `price`        int(10) UNSIGNED                                              NOT NULL DEFAULT 0 COMMENT '价格（单位：分）',
    `order_status` tinyint(3) UNSIGNED                                           NOT NULL DEFAULT 1 COMMENT '订单状态(1:待付款,2:已付款,3:已取消)',
    `order_time`   datetime                                                      NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    `title`        varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '订单标题',
    PRIMARY KEY (`order_id`) USING BTREE,
    INDEX `idx_user_id` (`user_id`) USING BTREE,
    INDEX `idx_order_time` (`order_time`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '订单表'
  ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;

-- 创建city表
CREATE TABLE `city`
(
    `city_id`   int(10) UNSIGNED                                              NOT NULL AUTO_INCREMENT COMMENT '城市ID',
    `city_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '城市名称',
    `province`  varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '省份',
    `country`   varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '国家',
    PRIMARY KEY (`city_id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '城市表'
  ROW_FORMAT = Dynamic;

-- 插入初始数据
INSERT INTO `city` (`city_name`, `province`, `country`)
VALUES ('北京', '北京市', '中国'),
       ('上海', '上海市', '中国'),
       ('广州', '广东省', '中国'),
       ('深圳', '广东省', '中国'),
       ('成都', '四川省', '中国'),
       ('杭州', '浙江省', '中国'),
       ('南京', '江苏省', '中国'),
       ('武汉', '湖北省', '中国'),
       ('西安', '陕西省', '中国'),
       ('重庆', '重庆市', '中国');

CREATE TABLE `tb_order_item`
(
    `order_item_id` int(10) UNSIGNED                                             NOT NULL AUTO_INCREMENT COMMENT '订单项ID',
    `order_id`      varchar(26) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '订单ID',
    `product_id`    int(10) UNSIGNED                                             NOT NULL COMMENT '产品ID',
    `quantity`      int(10) UNSIGNED                                             NOT NULL DEFAULT 0 COMMENT '数量',
    PRIMARY KEY (`order_item_id`) USING BTREE,
    INDEX `idx_order_id` (`order_id`) USING BTREE,
    INDEX `idx_product_id` (`product_id`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT = '订单项表'
  ROW_FORMAT = Dynamic;

