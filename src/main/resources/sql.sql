CREATE SCHEMA `company-manage` DEFAULT CHARACTER SET utf8 ;
use `company-manage`;

CREATE TABLE IF NOT EXISTS `company-manage`.`user` (
  `id` int(32) AUTO_INCREMENT NOT NULL COMMENT 'id',
  `user_name` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `show_name` varchar(50) NOT NULL DEFAULT '' COMMENT '姓名',
  `password` varchar(16) NOT NULL COMMENT '密码',
  `mobile` varchar(11) NULL COMMENT '手机号码',
  `mail` varchar(50) NULL COMMENT '邮箱',
  `deleted` smallint(4) NOT NULL DEFAULT 0 COMMENT '是否已删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `status` smallint(4) DEFAULT 1 COMMENT '用户状态 0：失效 1: 有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

CREATE TABLE IF NOT EXISTS `company-manage`.`menu` (
  `id` int(32) AUTO_INCREMENT NOT NULL COMMENT 'id',
  `parent_id` int(32) NOT NULL COMMENT '父id',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `type` smallint(4) NOT NULL COMMENT '菜单类型',
  `deleted` tinyint(4) NOT NULL DEFAULT 0 COMMENT '是否已删除',
  `sort` smallint(4) NULL COMMENT '是否已删除',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_time` datetime DEFAULT NULL COMMENT '修改时间',
  `status` smallint(4) DEFAULT 1 COMMENT '用户状态 0：失效 1: 有效',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表';
