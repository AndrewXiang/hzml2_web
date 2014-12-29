USE hzml2_web;
drop table if exists user;
CREATE TABLE user(
user_id int(11) NOT NULL AUTO_INCREMENT,
logon_name varchar(100) CHARACTER SET GBK NOT NULL DEFAULT '',
first_name varchar(40)  CHARACTER SET GBK DEFAULT NULL,
last_name  varchar(40)  CHARACTER SET GBK DEFAULT NULL,
`password` varchar(510) CHARACTER SET GBK DEFAULT NULL,
is_admin   int(11)      DEFAULT NULL,
primary KEY(`user_id`,`logon_name`)
)ENGINE=InnoDB DEFAULT CHARSET =GBK;