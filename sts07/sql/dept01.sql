use class03;
drop table emp01;
drop table dept01;
CREATE TABLE dept01 (
  deptno int(11) NOT NULL AUTO_INCREMENT,
  dname varchar(45) DEFAULT NULL,
  loc varchar(45) DEFAULT NULL,
  PRIMARY KEY (deptno)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO dept01 (deptno,dname,loc) VALUES (1,'������','�λ�');
INSERT INTO dept01 (deptno,dname,loc) VALUES (2,'�ѹ���','�λ�');
INSERT INTO dept01 (deptno,dname,loc) VALUES (3,'ȸ���','�뱸');
INSERT INTO dept01 (deptno,dname,loc) VALUES (4,'ȸ���','����');
