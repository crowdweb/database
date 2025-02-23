use mysql;

status;

/* 데이터베이스 생성 */
show databases;

--drop database podegi;

CREATE SCHEMA podegi DEFAULT CHARACTER SET utf8 ;


-- command 에서 실행
use mysql;
set character_set_client=utf8;
set character_set_results=utf8;
set character_set_connection=utf8;
set character_set_server=utf8;

alter database podegi default character set utf8;

commit;


/* 사용자 생성 및 추가 */
use mysql; 

-- 사용자 생성 user table insert
INSERT INTO user VALUES('localhost', 'podegi', PASSWORD('podegi'),'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y','','','','', 0, 0, 0, 0,'','');

INSERT INTO user VALUES('127.0.0.1', 'podegi', PASSWORD('podegi'),'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y','','','','', 0, 0, 0, 0,'','');

INSERT INTO user VALUES('%', 'podegi', PASSWORD('podegi'),'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y','','','','', 0, 0, 0, 0,'','');

-- 사용자에게 db 사용 권한을 위해 db table insert
INSERT INTO db VALUES('%','podegi','podegi','Y','Y','Y','Y','Y','Y','N','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','N','N');

INSERT INTO db VALUES('localhost','podegi','podegi','Y','Y','Y','Y','Y','Y','N','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','N','N');

* % : 전체 접속 허용 . localhost : 해당 서버에만 접속 허용

-- 사용자에게 root 권한 부여 
grant all on *.* to podegi@localhost identified by 'podegi' with grant option;

flush privileges;

select * from user;

/* 테이블 생성 */

use podegi;

show tables;
