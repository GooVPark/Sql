#날짜: 2022/06/15
#이름: 박성진
#내용: 교재 2장 테이블에서 데이터검색

CREATE TABLE `sample21`(
	`no` INT AUTO_INCREMENT PRIMARY KEY,
	`name` VARCHAR(10),
	`birthday` CHAR(10),
	`address` VARCHAR(20)
);

DROP TABLE `sample21`;

INSERT INTO `sample21` SET `name` = '박준용', `birthday` = '1976-10-18', `address` = '대구광역시 수성구';
INSERT INTO `sample21` SET `name` = '김재진', `address` = '대구광역시 동구';
INSERT INTO `sample21` SET `name` = '홍길동', `address` = '서울특별시 마포구';

INSERT INTO `sample21` (`name`, `birthdat`, `address`) VALUES ('박준용', '1976-10-18', '대구광역시 수성구');
INSERT INTO `sample21` (`name`, `address`) VALUES ('김재진', '대구광역시 동구');
INSERT INTO `sample21` (`name`, `address`) VALUES ('홍길동', '서울특별시 마포구');

#p53
SELECT * FROM `sample21`;

#p62
DESC `sample21`;

#p66
SELECT * FROM sample21;
SELECT `no`, `name` FROM `sample21`;

#p68
SELECT * FROM sample21;
SELECT *
	FROM `sample21`
		WHERE `no` = 2;

#p70
SELECT *
	FROM `sample21`
		WHERE `no`<>2;
		
#p71
SELECT *
	FROM `sample21`
		WHERE `name` = '박준용';

#p72
SELECT *
	FROM `sample21`
		WHERE `birthday` = NULL;
		
#p73
SELECT *
	FROM `sample21`
		WHERE `birthday` IS NULL;
		
#sample24

CREATE TABLE `sample24`(
	`no` INT AUTO_INCREMENT PRIMARY KEY,
	`a` TINYINT DEFAULT 0,
	`b` TINYINT DEFAULT 0,
	`c` TINYINT DEFAULT 0
	);

INSERT INTO `sample24` (`a`) VALUES(1);
INSERT INTO `sample24` (`b`) VALUES(1);
INSERT INTO `sample24` (`c`) VALUES(1);
INSERT INTO `sample24` (`a`, `b`) VALUES(2, 2);
INSERT INTO `sample24` (`b`, `c`) VALUES(2, 2);

#p76
SELECT *
	FROM `sample24`;

#p77
SELECT *
	FROM `sample24`
		WHERE `a` <> 0 AND `b` <> 0;
		
#p78
SELECT *
	FROM `sample24`
		WHERE `a` != 0 OR `b` != 0;
		
#p80 and or 연산자 우선순위가 있고 where절 안에서 괄호로 묶을 수 있다.
SELECT *
	FROM `sample24`
		WHERE `a` = 1 OR `a` = 2 AND `b` = 1 OR `b` = 2;

#p82
SELECT *
	FROM `sample24`
		WHERE NOT(`a` <> 0 OR `b` <> 0);


#sample25
CREATE TABLE `sample25`(
	`no` INT AUTO_INCREMENT PRIMARY KEY,
	`text` VARCHAR(50)
	);

INSERT INTO `sample25` (`text`) VALUE('SQL 은 RDBMS를 조직하는 언어이다');
INSERT INTO `sample25` (`text`) VALUE('LIKE에서는 메타 문자 %와 _를 사용할 수 있다.');
INSERT INTO `sample25` (`text`) VALUE('LIKE는 SQL에서 사용할 수 있는 술어 중 하나이다');

#p85
SELECT *
	FROM `sample25`
		WHERE `text` LIKE 'SQL%';

#p86
SELECT *
	FROM `sample25`
		WHERE `text` LIKE '%SQL%';
#p88
SELECT *
	FROM `sample25`
		WHERE `text` LIKE '%\%%';
