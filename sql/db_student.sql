CREATE DATABASE db_demo;
use db_demo;

DROP TABLE IF EXISTS db_demo.admin;
CREATE TABLE db_demo.admin(
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  username VARCHAR(30) NOT NULL
  COMMENT '用户名',
  password VARCHAR(30) NOT NULL
  COMMENT '密码'
)
  COMMENT '管理员表';

INSERT INTO db_demo.admin VALUES (NULL , 'admin', '123' );


DROP TABLE IF EXISTS db_demo.class;
CREATE TABLE db_demo.class(
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  title VARCHAR(30) NOT NULL
  COMMENT '班级名称',
  startDate DATE NOT NULL
  COMMENT '开班日期',
  finishDate DATE NOT NULL
  COMMENT '结业日期',
  cost DECIMAL NOT NULL
  COMMENT '费用',
  teacher VARCHAR(8) NOT NULL
  COMMENT '班主任',
  classState VARCHAR(4) NOT NULL
  COMMENT '班级状态'
)
  COMMENT '班级表';


DROP TABLE IF EXISTS db_demo.student;
CREATE TABLE db_demo.student(
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  username VARCHAR(30) NOT NULL
  COMMENT '学员姓名',
  password VARCHAR(30) NOT NULL
  COMMENT '密码',
  number VARCHAR(8) NOT NULL
  COMMENT '学员编号',
  gender CHAR(2) NOT NULL
  COMMENT '性别',
  idNumber VARCHAR(18) NOT NULL
  COMMENT '身份证号',
  tel VARCHAR(11) NOT NULL
  COMMENT '联系方式',
  email VARCHAR(30) NOT NULL UNIQUE
  COMMENT '常用邮箱',
  startDate DATE NOT NULL
  COMMENT '入训日期',
  finishDate DATE NOT NULL
  COMMENT '退训日期',
  studentState  VARCHAR(5) NOT NULL
  COMMENT '学员状态',
  classId INT NOT NULL UNIQUE
  COMMENT 'FK 班级id'
)
  COMMENT '学员表';


DROP TABLE IF EXISTS db_demo.work;
CREATE TABLE db_demo.work(
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  workUnit VARCHAR(30) NOT NULL
  COMMENT '工作单位',
  position VARCHAR(8) NOT NULL
  COMMENT '职位',
  studentId INT NOT NULL
  COMMENT 'fk 学员id'
);

DROP TABLE IF EXISTS db_demo.notice;
CREATE TABLE db_demo.notice(
  id  INT UNSIGNED AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  notice VARCHAR(255) NOT NULL
  COMMENT '公告',
  adminId INT UNIQUE NOT NULL
  COMMENT 'fk 管理员id'
)
  COMMENT '学院公';