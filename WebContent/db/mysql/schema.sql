USE hzml2_web;
drop table if exists user;
CREATE TABLE user(
user_id int(11) NOT NULL ,
logon_name varchar(100) CHARACTER SET gbk DEFAULT NULL,
first_name varchar(40)  CHARACTER SET gbk DEFAULT NULL,
last_name  varchar(40)  CHARACTER SET gbk DEFAULT NULL,
`password` varchar(510) DEFAULT NULL,
is_admin   int(11)      DEFAULT NULL,
primary KEY(`user_id`)
)ENGINE=InnoDB DEFAULT CHARSET =UTF8;