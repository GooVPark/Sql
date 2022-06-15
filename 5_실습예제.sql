#날짜: 2022/06/15
#이름: 박성진
#내용: SQL 고급 실습


#실습예제 5-1
CREATE TABLE `Member`(
`uid` VARCHAR(10) PRIMARY KEY,
`name` VARCHAR(10) NOT NULL,
`hp` CHAR(13) UNIQUE NOT NULL,
`pos` VARCHAR(10) DEFAULT '사원',
`dep` INT,
`rdate` DATETIME NOT NULL
);

DROP TABLE `sales`;

CREATE TABLE `Department`(
`depNo` INT PRIMARY KEY,
`name` VARCHAR(10) NOT NULL,
`tel` VARCHAR(12) NOT NULL
);

CREATE TABLE `Sales`(
`seq` INT AUTO_INCREMENT PRIMARY KEY,
`uid` VARCHAR(10) NOT NULL,
`year` YEAR NOT NULL,
`month` TINYINT NOT NULL,
`sale` INT NOT NULL
);

#실습예제 5-2
INSERT INTO `Member` VALUES('a101', '박혁거세', '010-1234-1001', '부장', 101, NOW());
INSERT INTO `Member` VALUES('a102', '김유신', '010-1234-1002', '차장', 101, NOW());
INSERT INTO `Member` VALUES('a103', '김춘추', '010-1234-1003', '사원', 101, NOW());
INSERT INTO `Member` VALUES('a104', '장보고', '010-1234-1004', '대리', 102, NOW());
INSERT INTO `Member` VALUES('a105', '강감찬', '010-1234-1005', '과장', 102, NOW());
INSERT INTO `Member` VALUES('a106', '이성계', '010-1234-1006', '차장', 103, NOW());
INSERT INTO `Member` VALUES('a107', '정철', '010-1234-1007', '차장', 103, NOW());
INSERT INTO `Member` VALUES('a108', '이순신', '010-1234-1008', '부장', 104, NOW());
INSERT INTO `Member` VALUES('a109', '허균', '010-1234-1009', '부장', 104, NOW());
INSERT INTO `Member` VALUES('a110', '정약용', '010-1234-1010', '사원', 105, NOW());
INSERT INTO `Member` VALUES('a111', '박지원', '010-1234-1011', '사원', 105, NOW());

INSERT INTO `Sales` SET `uid` = 'a101', `year` = '2018', `month` = 1, `sale` = 98100;
INSERT INTO `Sales` SET `uid` = 'a102', `year` = '2018', `month` = 1, `sale` = 136000;
INSERT INTO `Sales` SET `uid` = 'a103', `year` = '2018', `month` = 1, `sale` = 80100;
INSERT INTO `Sales` SET `uid` = 'a104', `year` = '2018', `month` = 1, `sale` = 78000;
INSERT INTO `Sales` SET `uid` = 'a105', `year` = '2018', `month` = 1, `sale` = 93000;

INSERT INTO `Sales` SET `uid` = 'a101', `year` = '2018', `month` = 2, `sale` = 23500;
INSERT INTO `Sales` SET `uid` = 'a102', `year` = '2018', `month` = 2, `sale` = 126000;
INSERT INTO `Sales` SET `uid` = 'a103', `year` = '2018', `month` = 2, `sale` = 18500;
INSERT INTO `Sales` SET `uid` = 'a105', `year` = '2018', `month` = 2, `sale` = 19000;
INSERT INTO `Sales` SET `uid` = 'a106', `year` = '2018', `month` = 2, `sale` = 53000;

INSERT INTO `Sales` SET `uid` = 'a101', `year` = '2019', `month` = 1, `sale` = 24000;
INSERT INTO `Sales` SET `uid` = 'a102', `year` = '2019', `month` = 1, `sale` = 109000;
INSERT INTO `Sales` SET `uid` = 'a103', `year` = '2019', `month` = 1, `sale` = 101000;
INSERT INTO `Sales` SET `uid` = 'a104', `year` = '2019', `month` = 1, `sale` = 53500;
INSERT INTO `Sales` SET `uid` = 'a107', `year` = '2019', `month` = 1, `sale` = 24000;

INSERT INTO `Sales` SET `uid` = 'a102', `year` = '2019', `month` = 2, `sale` = 160000;
INSERT INTO `Sales` SET `uid` = 'a103', `year` = '2019', `month` = 2, `sale` = 101000;
INSERT INTO `Sales` SET `uid` = 'a104', `year` = '2019', `month` = 2, `sale` = 43000;
INSERT INTO `Sales` SET `uid` = 'a105', `year` = '2019', `month` = 2, `sale` = 24000;
INSERT INTO `Sales` SET `uid` = 'a106', `year` = '2019', `month` = 2, `sale` = 109000;

INSERT INTO `Sales` SET `uid` = 'a102', `year` = '2020', `month` = 1, `sale` = 201000;
INSERT INTO `Sales` SET `uid` = 'a104', `year` = '2020', `month` = 1, `sale` = 63000;
INSERT INTO `Sales` SET `uid` = 'a105', `year` = '2020', `month` = 1, `sale` = 74000;
INSERT INTO `Sales` SET `uid` = 'a106', `year` = '2020', `month` = 1, `sale` = 122000;
INSERT INTO `Sales` SET `uid` = 'a107', `year` = '2020', `month` = 1, `sale` = 111000;

INSERT INTO `Sales` SET `uid` = 'a102', `year` = '2020', `month` = 2, `sale` = 120000;
INSERT INTO `Sales` SET `uid` = 'a103', `year` = '2020', `month` = 2, `sale` = 93000;
INSERT INTO `Sales` SET `uid` = 'a104', `year` = '2020', `month` = 2, `sale` = 84000;
INSERT INTO `Sales` SET `uid` = 'a105', `year` = '2020', `month` = 2, `sale` = 180000;
INSERT INTO `Sales` SET `uid` = 'a108', `year` = '2020', `month` = 2, `sale` = 76000;

INSERT into `Department` SET `depNo` = 101, `name` = '영업1부', `tel` = '051-512-1001';
INSERT into `Department` SET `depNo` = 102, `name` = '영업2부', `tel` = '051-512-1002';
INSERT into `Department` SET `depNo` = 103, `name` = '영업3부', `tel` = '051-512-1003';
INSERT into `Department` SET `depNo` = 104, `name` = '영업4부', `tel` = '051-512-1004';
INSERT into `Department` SET `depNo` = 105, `name` = '영업5부', `tel` = '051-512-1005';
INSERT into `Department` SET `depNo` = 106, `name` = '영업지원부', `tel` = '051-512-1006';
INSERT into `Department` SET `depNo` = 107, `name` = '인사부', `tel` = '051-512-1007';

#실습예제 5-3
SELECT * FROM `member` WHERE `name` = '김유신';
SELECT * FROM `member` WHERE `pos` = '차장' AND dep =101;
SELECT * FROM `member` WHERE `pos` = '차장' OR dep = 101;
SELECT * FROM `member` WHERE `name` != '김춘추';
SELECT * FROM `member` WHERE `name` <> '김춘추';
SELECT * FROM `member` WHERE `pos` = '사원' OR `pos` = '대리';
SELECT * FROM `member` WHERE `pos` IN('사원', '대리');
SELECT * FROM `member` WHERE `dep` IN(101, 102, 103);
SELECT * FROM `member` WHERE `name` LIKE '%신';
SELECT * FROM `member` WHERE `name` LIKE '김%';
SELECT * FROM `member` WHERE `name` LIKE '김__';
SELECT * FROM `member` WHERE `name` LIKE '_성_';
SELECT * FROM `member` WHERE `name` LIKE '정__';
SELECT * FROM `sales` WHERE `sale` > 50000;
SELECT * FROM `sales` WHERE `sale` >= 50000 AND `sale` < 100000 AND `month` =1;
SELECT * FROM `sales` WHERE `sale` BETWEEN 50000 AND 100000;
SELECT * FROM `sales` WHERE `sale` NOT BETWEEN 50000 AND 100000;
SELECT * FROM `sales` WHERE `year` IN(2020);
SELECT * FROM `sales` WHERE `month` IN(1, 2);

#실습예제 5-4
SELECT * FROM `sales` ORDER BY `sale`;
SELECT * FROM `sales` ORDER BY `sale` ASC;
SELECT * FROM `sales` ORDER BY `sale` DESC;
SELECT * FROM `member` ORDER BY `name`;
SELECT * FROM `member` ORDER BY `name` DESC;
SELECT * FROM `member` ORDER BY `rdate` ASC;
SELECT * FROM `sales` WHERE `sale` > 50000 ORDER BY `sale` DESC;
SELECT * FROM `sales` WHERE `sale` > 50000 ORDER BY `year`, `month`, `sale` DESC;

#실습예제 5-5
SELECT * FROM `sales` LIMIT 3;
SELECT * FROM `sales` LIMIT 0, 3;
SELECT * FROM `sales` LIMIT 1, 3;
SELECT * FROM `sales` LIMIT 4, 5;
SELECT * FROM `sales` ORDER BY `sale` DESC LIMIT 3, 5;
SELECT * FROM `sales` WHERE `sale` < 50000 ORDER BY `sale` DESC LIMIT 3;
SELECT * FROM `sales` WHERE `sale` > 50000 ORDER BY `year` DESC, `month` DESC LIMIT 5;

#실습예제 5-6
SELECT SUM(`sale`) AS `합계` FROM `sales`;
SELECT AVG(`sale`) AS `평균` FROM `sales`;
SELECT MAX(`sale`) AS `최대값` FROM `sales`;
SELECT MIN(`sale`) AS `최소값` FROM `sales`;
SELECT COUNT(`sale`) AS `갯수` FROM `sales`;
SELECT COUNT(*) AS `갯수` FROM `sales`;
SELECT SUBSTRING(`hp`, 10, 4) AS '전화번호 끝자리' FROM `member`;
INSERT INTO `member` VALUES('b101', '을지문덕', '010-5555-1234', '사장', 107, NOW());

SELECT SUM(`sale`) AS `2018년 1월 총 매출` 
	FROM `sales` 
		WHERE `year` = 2018 AND `month` = 1;
		
SELECT
	SUM(`sale`) AS `총합`,
	AVG(`sale`) AS `평균` 
		FROM `sales` 
			WHERE `sale` >= 50000 AND `year` = 2019 AND `month` = 2;
		
SELECT
	MIN(`sale`) AS `최저`,
	MAX(`sale`) AS `최고` 
		FROM `sales` 
			WHERE `year` = 2020;
