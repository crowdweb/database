use mysql;

status;

/* 데이터베이스 생성 */
show databases;

--drop database blackmores;

CREATE SCHEMA blackmores DEFAULT CHARACTER SET utf8 ;


-- command 에서 실행
use mysql;
set character_set_client=utf8;
set character_set_results=utf8;
set character_set_connection=utf8;
set character_set_server=utf8;

alter database blackmores default character set utf8;

commit;


/* 사용자 생성 및 추가 */
use mysql; 

create user 'blackmores'@'%' identified by 'blackmores';

grant all privileges on *.* to 'blackmores'@'%';

select * from user;

/* 테이블 생성 */

use blackmores;

show tables;
