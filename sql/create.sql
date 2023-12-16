DROP SCHEMA IF EXISTS spirit;
CREATE SCHEMA IF NOT EXISTS spirit DEFAULT CHARACTER SET utf8;
USE spirit;

-- -------------------------------------------

DROP TABLE IF EXISTS spirit.user;

CREATE TABLE IF NOT EXISTS spirit.user (
    userId INT NOT NULL AUTO_INCREMENT,
    userName VARCHAR(10),
    userPhone VARCHAR(15),
    userImage VARCHAR(200),
    univId INT,
    created DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    PRIMARY KEY(userId)
);

DROP TABLE IF EXISTS spirit.university;

CREATE TABLE IF NOT EXISTS spirit.university (
    univId INT NOT NULL AUTO_INCREMENT,
    univName VARCHAR(30),
    univCount INT,
    created DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    PRIMARY KEY(univId)
);

DROP TABLE IF EXISTS spirit.major;

CREATE TABLE IF NOT EXISTS spirit.major (
    majorId INT NOT NULL AUTO_INCREMENT,
    univId INT,
    univName VARCHAR(30),
    majorName VARCHAR(50),
    created DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
    PRIMARY KEY(majorId)
);

-- -------------------------------------------


INSERT INTO spirit.user(userName, userPhone, univId)
VALUES('박근원', '010-9880-6010', 1);

INSERT INTO spirit.university(univName, univCount)
VALUES('한양대학교', 1);

INSERT INTO spirit.major(univId, univName, majorName)
VALUES(1, '한양대학교', '컴퓨터소프트웨어학부');