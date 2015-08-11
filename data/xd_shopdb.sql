CREATE DATABASE IF NOT EXISTS 'xd_Shop';
USE 'xd_Shop';
--管理员表

DROP TABLE IF EXISTS 'xd_admin';
CREATE TABLE 'xd_admin'(
'id' tinyint unsigned auto_increment key,
'username' VARCHAR(30) NOT  null UNIQUE ,  -- 管理员用户名
'password' CHAR(30) not NULL,             -- 管理员密码
'email' VARCHAR(50) NOT NULL               -- 管理员电邮
);

--分类表

DROP TABLE IF EXISTS xd_cate;
CREATE TABLE xd_cate(
id SMALLINT unsigned auto_increment KEY ,
cName VARCHAR(100) UNIQUE                -- 分类名称
);

--商品表

DROP  TABLE  IF EXISTS xd_pro;
CREATE TABLE xd_pro(
id SMALLINT unsigned auto_increment KEY,
pName VARCHAR(50) NOT  NULL,
pSn VARCHAR(50) NOT NULL,
pNum INT unsigned DEFAULT 1,
mPrice DECIMAL(10,2) NOT NULL,
iPrice DECIMAL(10,2) NOT NULL,
pDsec text,
pImg VARCHAR(50) NOT NULL,
pubTime INT unsigned NOT NULL,
isShow tinyint(1) DEFAULT 1,
isHot tinyint(1) DEFAULT 1,
cId SMALLINT unsigned NOT NULL

);

--用户表

DROP TABLE IF EXISTS 'xd_user';
CREATE TABLE xd_user(
id INT unsigned auto_increment KEY,
userName VARCHAR(30) NOT NULL UNIQUE,
passWord CHAR(50) NOT NULL,
sex enum("男","女","保密") NOT NULL DEFAULT "保密",
face VARCHAR(50) NOT NULL,
regTime INT unsigned NOT NULL

);

-- 相册表

DROP TABLE IF EXISTS 'xd_album';
CREATE TABLE xd_album(
id INT unsigned auto_increment KEY,
pid INT unsigned NOT NULL,
albumpath VARCHAR(50) NOT NULL
);
