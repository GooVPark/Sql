#날짜: 2022/06/14
#이름: 박성진
#내용: SQL 확인문제 실습

#실습하기4-1

CREATE DATABASE `ex1`;
CREATE TABLE `tbl_member`(
`memberID` VARCHAR(10) PRIMARY KEY,
`memberName` VARCHAR(10) NOT NULL,
`memberHp` CHAR(13) UNIQUE,
`memberAge` TINYINT,
`memberAddr` VARCHAR(20)
);

CREATE TABLE `tbl_product`(
`productCode` INT AUTO_INCREMENT PRIMARY KEY,
`productName` VARCHAR(10) NOT NULL,
`price` INT NOT NULL,
`amount` INT NOT NULL,
`company` VARCHAR(10),
`makeDate` DATE
);



#실습하기 4-2
INSERT INTO `tbl_member` VALUES('p101', '김유신', '010-1234-1001', 25, '신라');
INSERT INTO `tbl_member` VALUES('p102', '김춘추', '010-1234-1002', 23, '신라');
INSERT INTO `tbl_member` SET `memberID` = 'p103', `memberName` = '장보고', `memberAddr` = '통일신라';
UPDATE `tbl_member` SET `memberAge` = 31 WHERE `memberID` = 'p103';
INSERT INTO `tbl_member` SET `memberID` = 'p104', `memberName` = '강감찬', `memberAddr` = '고려';
INSERT INTO `tbl_member` SET `memberID` = 'p105', `memberName` = '이순신', `memberHp` = '010-1234-1005', `memberAge` = 50;

INSERT INTO `tbl_product` SET `productName` = '냉장고', `price` = 800, `amount` = 10, `company` = 'LG', `makeDate` = NOW();
INSERT INTO `tbl_product` SET `productName` = '노트북', `price` = 1200, `amount` = 20, `company` = '삼성', `makeDate` = NOW();
INSERT INTO `tbl_product` SET `productName` = 'TV', `price` = 1400, `amount` = 6, `company` = 'LG', `makeDate` = NOW();
INSERT INTO `tbl_product` SET `productName` = '세탁기', `price` = 1000, `amount` = 8, `company` = 'LG', `makeDate` = NOW();
INSERT INTO `tbl_product` SET `productName` = '컴퓨터', `price` = 1100, `amount` = 0;
INSERT INTO `tbl_product` SET `productName` = '휴대폰', `price` = 900, `amount` = 102, `company` = '삼성', `makeDate` = NOW();

#실습하기 4-3
SELECT `memberName` FROM `tbl_member`;
SELECT `memberName`, `memberHp` FROM `tbl_member`;
SELECT * FROM `tbl_member` WHERE `memberID` = 'p102';
SELECT * FROM `tbl_member` WHERE `memberID` = 'p104' OR `memberID` = 'p105' OR `memberID` = 'p101' AND `memberAddr` = '고려';
SELECT * FROM `tbl_member` WHERE `memberAddr` = '신라';
SELECT * FROM `tbl_member` WHERE `memberAge` > 30;
SELECT * FROM `tbl_member` WHERE `memberHp` IS NULL;
UPDATE `tbl_member` SET `memberAddr` = '조선' WHERE `memberID` = 'p105';
UPDATE `tbl_member` SET `memberAge` = 42 WHERE `memberID` = 'p104';
DELETE FROM `tbl_member` WHERE `memberID` = 'p103';
SELECT * FROM `tbl_member`;

SELECT `productName` FROM `tbl_product`;
SELECT `productName`, `price` FROM `tbl_product`;
SELECT * FROM `tbl_product` WHERE `company` = 'LG';
SELECT * FROM `tbl_product` WHERE `company` = '삼성';
UPDATE `tbl_product` SET `company` = '삼성', `makeDate` = NOW() WHERE `productCode` = 5;
SELECT * FROM `tbl_product`;