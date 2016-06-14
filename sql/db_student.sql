CREATE DATABASE db_demo;
USE db_demo;

DROP TABLE IF EXISTS db_demo.admin;
CREATE TABLE db_demo.admin (
  id       INT UNSIGNED AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  username VARCHAR(30)  NOT NULL
  COMMENT '用户名',
  password VARCHAR(255) NOT NULL
  COMMENT '密码'
)
  COMMENT '管理员表';

INSERT INTO db_demo.admin VALUES (NULL, 'admin', '13do3DeGj6b8Nxf0l3+J/ER05/yQzbHHPkaIhb4m01f+p0nj14OrJEIts4K2qZ3m');
SELECT *
FROM db_demo.admin;




DROP TABLE IF EXISTS db_demo.class;
CREATE TABLE db_demo.class (
  id         INT UNSIGNED AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  title      VARCHAR(30) NOT NULL
  COMMENT '班级名称',
  startDate  DATE        NOT NULL
  COMMENT '开班日期',
  finishDate DATE        NOT NULL
  COMMENT '结业日期',
  cost       DECIMAL     NOT NULL
  COMMENT '费用',
  teacher    VARCHAR(8)  NOT NULL
  COMMENT '班主任',
  classState VARCHAR(4)  NOT NULL
  COMMENT '班级状态'
)
  COMMENT '班级表';

SELECT *
FROM db_demo.class;


DROP TABLE IF EXISTS db_demo.student;
CREATE TABLE db_demo.student (
  id           INT UNSIGNED AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  username     VARCHAR(30)  NOT NULL
  COMMENT '学员姓名',
  password     VARCHAR(255) NOT NULL
  COMMENT '密码',
  number       VARCHAR(8)   NOT NULL
  COMMENT '学员编号',
  gender       CHAR(2)      NOT NULL
  COMMENT '性别',
  idNumber     VARCHAR(18)  NOT NULL
  COMMENT '身份证号',
  tel          VARCHAR(11)  NOT NULL
  COMMENT '联系方式',
  email        VARCHAR(30)  NOT NULL UNIQUE
  COMMENT '常用邮箱',
  startDate    DATE         NOT NULL
  COMMENT '入训日期',
  finishDate   DATE         NOT NULL
  COMMENT '退训日期',
  studentState VARCHAR(5)   NOT NULL
  COMMENT '学员状态',
  classId      INT          UNSIGNED
  COMMENT 'FK 班级id'
)
  COMMENT '学员表';


DROP TABLE IF EXISTS db_demo.work;
CREATE TABLE db_demo.work (
  id        INT UNSIGNED AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  workUnit  VARCHAR(30) NOT NULL
  COMMENT '工作单位',
  position  VARCHAR(8)  NOT NULL
  COMMENT '职位',
  studentId INT       UNSIGNED  NOT NULL
  COMMENT 'fk 学员id'
);

DROP TABLE IF EXISTS db_demo.notice;
CREATE TABLE db_demo.notice (
  id      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY
  COMMENT 'PK',
  notice  VARCHAR(255) NOT NULL
  COMMENT '公告',
  classId INT UNSIGNED   NOT NULL
  COMMENT 'fk 班级id'
)
  COMMENT '学院公告表';

ALTER TABLE db_demo.student
ADD CONSTRAINT
  fk_student_classId
FOREIGN KEY (classId)
REFERENCES db_demo.class (id);

ALTER TABLE db_demo.work
ADD CONSTRAINT
  fk_work_studentId
FOREIGN KEY (studentId)
REFERENCES db_demo.student (id);

ALTER TABLE db_demo.notice
ADD CONSTRAINT
  fk_notice_adminId
FOREIGN KEY (classId)
REFERENCES db_demo.class (id);


SELECT *
FROM db_demo.student;
SELECT *
FROM db_demo.class;
INSERT INTO db_demo.class VALUES (NULL ,'java02','2016-06-01','2016-06-01',15000,'zhangsan','ing');
INSERT INTO db_demo.class VALUES (NULL ,'java01','2016-06-01','2016-06-01',15000,'zhangsan','ing');
INSERT INTO db_demo.class VALUES (NULL ,'java03','2016-06-01','2016-06-01',15000,'哈哈','ing');

SELECT *
FROM student;

SELECT
  c.id,
  c.title,
  s.id         AS id_student,
  s.username,
  s.number,
  s.startDate  AS startDate_student,
  s.finishDate AS finishDate_student,
  s.studentState
FROM db_demo.class c INNER JOIN db_demo.student s
    ON c.id = s.classId
WHERE c.id = 1;


select
  c.id,
  c.title,
  s.id         AS id_student,
  s.username,
  s.number,
  s.startDate  AS startDate_student,
  s.finishDate AS finishDate_student,
  s.studentState
from class c,student s where c.id = s.classId and  c.id = 1

select * from