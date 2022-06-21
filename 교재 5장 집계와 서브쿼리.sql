CREATE TABLE `sample51`
(
	`no` INT,
	`name` VARCHAR(10),
	`quantity` INT
);


INSERT INTO `sample51` VALUES(1, 'A', 1);
INSERT INTO `sample51` VALUES(2, 'A', 2);
INSERT INTO `sample51` VALUES(3, 'B', 10);
INSERT INTO `sample51` VALUES(4, 'C', 3);
INSERT INTO `sample51` VALUES(5, null, null);

#p183
SELECT COUNT(*) FROM `sample51`;

#p185
SELECT * FROM `sample51` WHERE `name` = 'A';
SELECT COUNT(*) FROM `sample51` WHERE `name` = 'A';

#p186
SELECT * FROM `sample51`;
SELECT COUNT(`no`), COUNT(`name`) FROM `sample51`;

#p187
SELECT * FROM `sample51`;

#p188
SELECT ALL NAME FROM `sample51`;
SELECT DISTINCT NAME FROM `sample51`;

#p189
SELECT COUNT(ALL `name`), COUNT(DISTINCT `name`) FROM `sample51`;

#p191
SELECT SUM(`quantity`) FROM `sample51`;

#p192
SELECT AVG(`quantity`), SUM(`quantity`) / COUNT(`quantity`) FROM `sample51`;

#p193
SELECT AVG(case when quantity IS NULL then 0 ELSE quantity END) AS avgnull0 FROM `sample51`;
SELECT MIN(quantity), MAX(quantity), MAX(`name`) FROM `sample51`;

#p195
SELECT `name` FROM `sample51` GROUP BY `name`;

#p197
SELECT `name`, COUNT(`name`), SUM(`quantity`)
FROM `sample51` GROUP BY `name`;

#199
SELECT `name`, COUNT(`name`) FROM `sample51` GROUP BY `name`;
SELECT `name`, COUNT(`name`) FROM `sample51` GROUP BY `name` HAVING COUNT(`name`) = 1;

#p202
SELECT `name`, COUNT(`name`), SUM(`quantity`) FROM `sample51` GROUP BY `name` ORDER BY SUM(`quantity`) DESC;

CREATE TABLE `sample54`
(
	`no` INT,
	`a` INT
);


INSERT INTO `sample54` VALUES(1, 100);
INSERT INTO `sample54` VALUES(2, 900);
INSERT INTO `sample54` VALUES(3, 20);
INSERT INTO `sample54` VALUES(4, 80);

#p205
SELECT MIN(a) FROM `sample54`;

#p206
DELETE FROM `sample54` WHERE `a` = (SELECT MIN(`a`) FROM `sample54`);
SELECT * FROM `sample54`;

#p207
SELECT MIN(`a`) FROM `sample54`;

SELECT `no` FROM `sample54`;

SELECT MIN(`a`), MAX(`no`) FROM `sample54`;

#p208
SELECT `no`, `a` FROM `sample54`;

#p210
SELECT
	(SELECT COUNT(*) FROM `sample51`) AS sq1,
	(SELECT COUNT(*) FROM `sample54`) AS sq2;
	
SELECT
	(SELECT COUNT(*) FROM `sample51`) AS sq1,
	(SELECT COUNT(*) FROM `sample54`) AS sq2 FROM DUAL;
	
#p211
UPDATE `sample54` SET `a` = (SELECT MAX(`a`) FROM `sample54`);

#p212
SELECT * FROM (SELECT * FROM `sample54`) sq;
SELECT * FROM (SELECT * FROM `sample54`) AS sq;

#p213
SELECT * FROM (SELECT * FROM (SELECT * FROM `sample54`) sq1) sq2;


CREATE TABLE `sample541` ( `a` INT, `b` INT);

#p214
INSERT INTO `sample541`
 VALUES(
	 (SELECT COUNT(*) FROM `sample51`),
	 (SELECT COUNT(*) FROM `sample54`)
	 );

SELECT * FROM `sample541`;

INSERT INTO `sample541` SELECT 1, 2;
SELECT * FROM `sample541`;

#p215
INSERT INTO `sample542` SELECT * FROM `sample543`;


CREATE TABLE `sample551`
(
	`no` INT,
	`a` VARCHAR(10)
	);

INSERT INTO `sample551` VALUES(1, NULL);
INSERT INTO `sample551` VALUES(2, NULL);
INSERT INTO `sample551` VALUES(3, NULL);
INSERT INTO `sample551` VALUES(4, NULL);
INSERT INTO `sample551` VALUES(5, NULL);
	
CREATE TABLE `sample552`
(
	`no 2` INT
);

INSERT INTO `sample552` VALUE(3);
INSERT INTO `sample552` VALUE(5);

#p218
UPDATE `sample551` SET `a` = '있음' WHERE EXISTS (SELECT * FROM `sample552` WHERE `no 2` = `no`);
SELECT * FROM `sample551`;

#p219
UPDATE `sample551` SET `a` = '없음' WHERE NOT EXISTS (SELECT * FROM `sample552` WHERE `no 2` = `no`);
SELECT * FROM `sample551`;

#p221
UPDATE `sample551` SET `a` = '있음' WHERE EXISTS (SELECT * FROM `sample552` WHERE `sample552`.`no 2` = `sample551`.`no`);

#p222
SELECT * FROM `sample551` WHERE `no` IN (3, 5);
SELECT * FROM `sample551` WHERE `no` IN (SELECT `no 2` FROM `sample552`);



