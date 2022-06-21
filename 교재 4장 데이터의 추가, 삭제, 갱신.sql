#16강 행 추가하기

CREATE TABLE `sample41`
(
	`no` INT(11) NOT NULL,
	`a` VARCHAR(30),
	`b` date
);

#p153
DESC `sample41`;

#p154
INSERT INTO `sample41` VALUES(1, 'ABC', '2014-01-25');
SELECT * FROM `sample41`;

#p155
INSERT INTO `sample41` (a, `no`) VALUES('XYZ', 2);
SELECT * FROM `sample41`;

#p156
INSERT INTO `sample41` (`no`, `a`, `b`) VALUES(NULL, NULL, NULL);

INSERT INTO `sample41`(`no`, `a`, `b`) VALUES(3, NULL, NULL);
SELECT * FROM `sample41`;

#p157
CREATE TABLE `sample411`
(
	`no` INT(11) NOT NULL,
	`a` INT(11) DEFAULT 0
);

DESC `sample411`;

#p158
INSERT INTO `sample411`(`no`, `a`) VALUES(1, 1);
SELECT * FROM `sample411`;

INSERT INTO `sample411`(`no`, `a`) VALUES(2, DEFAULT);
SELECT * FROM `sample411`;

#p159
INSERT INTO `sample411`(`no`) VALUES(3);

#p161
SELECT * FROM `sample41`;

#p162
DELETE FROM `sample41` WHERE `no` = 3;
SELECT * FROM `sample41`;


#p165
SELECT * FROM `sample41`;

#p166
UPDATE `sample41` SET b = '2014-09-07' WHERE `no` = 2;
SELECT * FROM `sample41`;

#p168
UPDATE `sample41` SET `no` = `no` + 1;
SELECT * FROM `sample41`;

#p170
UPDATE `sample41` SET `no` = `no` + 1, `a` = `no`;
SELECT * FROM `sample41`;

#p171
UPDATE `sample41` SET `a` = `no`, `no` = `no` + 1;
SELECT * FROM `sample41`;

UPDATE `sample41` SET `no` = `no` + 1, `a` = `no`;
SELECT * FROM `sample41`;

UPDATE `sample41` SET `a` = `no`, `no` = `no` + 1;
SELECT * FROM `sample41`;

#p173
UPDATE `sample41` SET `a` = NULL;
SELECT * FROM `sample41`;