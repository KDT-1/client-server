create database safedream;

use safedream;

CREATE TABLE user (
    userid VARCHAR(45) PRIMARY KEY,
    username VARCHAR(45) NOT NULL,
    password VARCHAR(45) NOT NULL,
    guardianHp VARCHAR(45) NULL,
    guardianHp2 VARCHAR(45) NULL,
    hp VARCHAR(45) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
CREATE TABLE Admin (
    userid VARCHAR(45) PRIMARY KEY,
    password VARCHAR(45) NOT NULL
);

select * from admin;
select * from admin where userid="admin" and password="1234";
CREATE TABLE board (
    post_id INT PRIMARY KEY auto_increment,
    userid VARCHAR(45) NOT NULL,
    category VARCHAR(45) NOT NULL,
    title VARCHAR(45) NOT NULL,
    content TEXT NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (userid) REFERENCES user(userid)
);
select * from Admin;
select * from user;
select * from board;

insert into Admin (userid, password) values ('admin', '1234');
INSERT INTO user (userid, username, password, guardianHp, guardianHp2, hp) VALUES ('apple', '김사과', '1234', '01012345678', '01041567891', '01055555555');
INSERT INTO user (userid, username, password, guardianHp, guardianHp2, hp) VALUES ('banana', '반하나', 'banana', '01011111111', '01011111111', '01011111111');
INSERT INTO user (userid, username, password, guardianHp, guardianHp2, hp) VALUES ('orang', '오란지', 'password3', '01022222222', '01022222222', '01022222222');
INSERT INTO user (userid, username, password, guardianHp, guardianHp2, hp) VALUES ('malon', '이메론', 'password4', '01033333333', '01033333333', '01033333333');
INSERT INTO user (userid, username, password, guardianHp, guardianHp2, hp) VALUES ('user5', 'User5', 'password5', '123456789', '987654321', '111222337');
INSERT INTO user (userid, username, password, guardianHp, guardianHp2, hp) VALUES ('user6', 'User6', 'password6', '123456789', '987654321', '111222338');
INSERT INTO user (userid, username, password, guardianHp, guardianHp2, hp) VALUES ('user7', 'User7', 'password7', '123456789', '987654321', '111222339');
INSERT INTO user (userid, username, password, guardianHp, guardianHp2, hp) VALUES ('user8', 'User8', 'password8', '123456789', '987654321', '111222340');
INSERT INTO user (userid, username, password, guardianHp, guardianHp2, hp) VALUES ('user9', 'User9', 'password9', '123456789', '987654321', '111222341');
INSERT INTO user (userid, username, password, guardianHp, guardianHp2, hp) VALUES ('user10', 'User10', 'password10', '123456789', '987654321', '111222342');

INSERT INTO board (userid, category, title, content) VALUES ('user1', '자유게시판', 'GS 29 사용후기', '좋습니다. 좋아요.');

SELECT userid, userid, category, title, content ,hp FROM user;

/*회원 삭제 쿼리*/
DELETE FROM user WHERE userid = 'user3';

/*삭제 SQL문*/
-- DROP TABLE `safedream`.`user`;
-- DELETE FROM user;
-- drop table board;