#날짜: 2022/06/14
#이름: 박성진
#내용: 데이터베이스 관리 실습

DROP DATABASE testdb2;

CREATE DATABASE `mydb`;

#실습하기 3_1
CREATE DATABASE `testDB`;
CREATE USER 'tester'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON `testdb`.* TO 'tester'@'%';
FLUSH PRIVILEGES;

#실습하기 3_2
SET PASSWORD FOR 'tester'@'%' = PASSWORD('1q2w3e');

DROP DATABASE `mydb`;