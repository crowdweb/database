/* ����� ���� �� �߰� */
use mysql; 

-- ����� ���� user table insert
INSERT INTO user VALUES('localhost', 'spring', PASSWORD('spring'),'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y','','','','', 0, 0, 0, 0,'','');

INSERT INTO user VALUES('127.0.0.1', 'spring', PASSWORD('spring'),'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y','','','','', 0, 0, 0, 0,'','');

INSERT INTO user VALUES('%', 'spring', PASSWORD('spring'),'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y','','','','', 0, 0, 0, 0,'','');

-- ����ڿ��� db ��� ������ ���� db table insert
INSERT INTO db VALUES('%','test','spring','Y','Y','Y','Y','Y','Y','N','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','N','N');

INSERT INTO db VALUES('localhost','test','spring','Y','Y','Y','Y','Y','Y','N','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','N','N');

-- ����ڿ��� root ���� �ο� 
grant all on *.* to spring@localhost identified by 'spring' with grant option;

flush privileges;