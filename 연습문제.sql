#날짜: 2022/06/20
#이름: 박성진
#내용: SQL 연습문제

#문제1
CREATE TABLE `Book`(
		bookid INT AUTO_INCREMENT PRIMARY KEY,
		bookname VARCHAR(20),
		publisher VARCHAR(10),
		price INT
	);
	
INSERT INTO `book` (`bookname`, `publisher`, `price`) VALUES('축구의 역사', '굿스포츠', 7000);
INSERT INTO `book` (`bookname`, `publisher`, `price`) VALUES('축구아는 여자', '나무수', 13000);
INSERT INTO `book` (`bookname`, `publisher`, `price`) VALUES('축구의 이해', '대한미디어', 22000);
INSERT INTO `book` (`bookname`, `publisher`, `price`) VALUES('골프 바이블', '대한미디어', 35000);
INSERT INTO `book` (`bookname`, `publisher`, `price`) VALUES('피겨 교본', '굿스포츠', 8000);
INSERT INTO `book` (`bookname`, `publisher`, `price`) VALUES('역도 단계별기술', '굿스포츠', 6000);
INSERT INTO `book` (`bookname`, `publisher`, `price`) VALUES('야구의 추억', '이상미디어', 20000);
INSERT INTO `book` (`bookname`, `publisher`, `price`) VALUES('야구를 부탁해', '이상미디어', 13000);
INSERT INTO `book` (`bookname`, `publisher`, `price`) VALUES('올림픽 이야기', '삼성당', 7500);
INSERT INTO `book` (`bookname`, `publisher`, `price`) VALUES('Olympic Champoins', 'Pearson', 13000);


#문제2
CREATE TABLE `customer`(
 `custid` INT AUTO_INCREMENT PRIMARY KEY,
 `name` VARCHAR(20),
 `address` VARCHAR(20),
 `phone` VARCHAR(13)
 );
 
INSERT INTO `customer` (`name`, `address`, `phone`) VALUES('박지성', '영국맨체스타', '000-5000-0001');
INSERT INTO `customer` (`name`, `address`, `phone`) VALUES('김연아', '대한민국 서울', '000-6000-0001');
INSERT INTO `customer` (`name`, `address`, `phone`) VALUES('장미란', '대한민국 강원도', '000-7000-0001');
INSERT INTO `customer` (`name`, `address`, `phone`) VALUES('추신수', '미국 클리블랜드', '000-8000-0001');
INSERT INTO `customer` (`name`, `address`) VALUES('박세리', '대한민국 대전');


#문제3
CREATE TABLE `Orders`(
	orderid INT AUTO_INCREMENT PRIMARY KEY,
	custid INT,
	bookid INT,
	saleprice INT,
	orderdate DATE
	);
	
INSERT INTO orders (custid, bookid, saleprice, orderdate) VALUES(1, 1, 6000, '2014-07-01');
INSERT INTO orders (custid, bookid, saleprice, orderdate) VALUES(1, 3, 21000, '2014-07-03');
INSERT INTO orders (custid, bookid, saleprice, orderdate) VALUES(2, 5, 8000, '2014-07-03');
INSERT INTO orders (custid, bookid, saleprice, orderdate) VALUES(3, 6, 6000, '2014-07-04');
INSERT INTO orders (custid, bookid, saleprice, orderdate) VALUES(4, 7, 20000, '2014-07-05');
INSERT INTO orders (custid, bookid, saleprice, orderdate) VALUES(1, 2, 12000, '2014-07-07');
INSERT INTO orders (custid, bookid, saleprice, orderdate) VALUES(4, 8, 13000, '2014-07-07');
INSERT INTO orders (custid, bookid, saleprice, orderdate) VALUES(3, 10, 12000, '2014-07-08');
INSERT INTO orders (custid, bookid, saleprice, orderdate) VALUES(2, 10, 7000, '2014-07-09');
INSERT INTO orders (custid, bookid, saleprice, orderdate) VALUES(3, 8, 13000, '2014-07-10');

#문제 4
SELECT `custid`, `name`, `address` FROM `customer`;

#문제 5
SELECT `bookname`, `price` FROM `book`;

#문제 6
SELECT `price`, `bookname` FROM `book`;

#문제 7
SELECT `bookid`, `bookname`, `publisher`, `price` FROM `book`;

#문제 8
SELECT `publisher` FROM `book`;

#문제 9
SELECT DISTINCT `publisher` FROM `book`;

#문제 10
SELECT * FROM `book`
WHERE `price` >= 20000;

#문제 11
SELECT * FROM `book`
WHERE `price` < 20000;

#문제 12
SELECT * FROM `book`
WHERE `price` >= 10000 AND `price` <= 20000;

#문제 13
SELECT `bookid`, `bookname`, `price`
FROM `book`
WHERE `price` BETWEEN 10000 AND 20000;

#문제 14
SELECT *
FROM `book`
WHERE `bookid` IN(2, 3, 5);

#문제 15
SELECT *
FROM `book`
WHERE `bookid` % 2 = 0;

#문제 16
SELECT *
FROM `customer`
WHERE `name` LIKE '박%';

#문제 17
SELECT *
FROM `customer`
WHERE `address` LIKE '대한민국%';

#문제 18
SELECT *
FROM `customer`
WHERE `phone` IS NOT NULL;

#문제 19
SELECT *
FROM `book`
WHERE `publisher` IN('굿스포츠', '대한미디어');

#문제 20
SELECT `publisher`
FROM `book`
WHERE `bookname` = '축구의 역사';

#문제 21
SELECT `publisher`
FROM `book`
WHERE `bookname` LIKE '%축구%';

#문제 22
SELECT *
FROM `book`
WHERE `bookname` LIKE '_구%';

#문제 23
SELECT *
FROM `book`
WHERE `bookname` LIKE '%축구%' AND `price` >= 20000;

#문제 24
SELECT *
FROM `book`
ORDER BY `bookname`;

#문제 25
SELECT *
FROM `book`
ORDER BY `price`, `bookname`;

#문제 26
SELECT *
FROM `book`
ORDER BY `price` DESC, `publisher` ASC;

#문제 27
SELECT *
FROM `book`
ORDER BY `price` DESC
LIMIT 3;

#문제 28
SELECT *
FROM `book`
ORDER BY `price` ASC
LIMIT 3;

#문제 29
SELECT SUM(`saleprice`) AS `총판매액`
FROM `orders`;

#문제 30
SELECT SUM(`saleprice`) AS `총판매액`, AVG(`saleprice`) AS 평균값, MIN(`saleprice`) AS `최저가`, MAX(`saleprice`) AS `최고가`
FROM `orders`;

#문제 31
SELECT COUNT(`orderid`) AS `판매건수`
FROM `orders`;

#문제 32
SELECT `bookid`, REPLACE(`bookname`, '야구', '농구') AS `bookname`, `publisher`, `price`
FROM `book`;

#문제 33
SELECT `custid`, COUNT(*) as `건수`
FROM `orders`
WHERE `saleprice` >= 8000
GROUP BY `custid`
HAVING COUNT(*) >= 2;

#문제 34
SELECT * FROM `customer` JOIN `orders` ON `customer`.custid = `orders`.custid;

#문제 35
SELECT * FROM `customer` JOIN `orders` ON `customer`.custid = `orders`.custid
ORDER BY `customer`.`custid`;

#문제 36
SELECT a.`name`, b.`saleprice`
FROM `customer` AS a
JOIN `orders` AS b;

#문제 37
SELECT a.`name`, SUM(b.`saleprice`)
FROM `customer` AS a 
JOIN `orders` AS b ON a.custid = b.custid
GROUP BY b.`custid`
HAVING SUM(b.`saleprice`)
ORDER BY a.name;

#문제 38
SELECT a.`name`, c.`bookname`
FROM `customer` AS a
JOIN `orders` AS b ON a.custid = b.custid
JOIN `book` AS c ON b.bookid = c.bookid;

#문제 39
SELECT a.`name`, c.`bookname`
FROM `customer` AS a
JOIN `orders` AS b ON a.custid = b.custid
JOIN `book` AS c ON b.bookid = c.bookid
WHERE c.price = 20000;

#문제 40
SELECT a.`name`, b.`saleprice`
FROM `customer` AS a
left JOIN `orders` AS b ON a.custid = b.custid;


#문제 41
SELECT `bookname`
FROM `book`
ORDER BY `price` DESC
LIMIT 1;

#문제 42
SELECT a.`name`
FROM `customer` AS a
left JOIN `orders` AS b ON a.custid = b.custid
WHERE `saleprice` IS NULL;

#문제 43
SELECT SUM(b.saleprice) AS `총매출`
FROM `customer` AS a
JOIN `orders` AS b ON a.custid = b.custid
WHERE a.`name` = '김연아'; 

#문제 44
INSERT INTO `book` (`bookname`, `publisher`) VALUES ('스포츠의학', '한솔의학서적');

SELECT * FROM `book`;

#문제 45
UPDATE `customer` SET `address` = '대한민국 부산' WHERE `custid` = 5;
SELECT * FROM `customer`;

#문제 46
DELETE FROM `customer` WHERE `custid` = 5;
SELECT * FROM `customer`;