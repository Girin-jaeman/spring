use class03;
drop table dept01;
drop table emp01;
CREATE TABLE dept01 (
  deptno int(11) NOT NULL AUTO_INCREMENT,
  dname varchar(45) DEFAULT NULL,
  loc varchar(45) DEFAULT NULL,
  PRIMARY KEY (deptno)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

alter table dept01 auto_increment=1;

INSERT INTO dept01 (dname,loc) VALUES ('������','�λ�');
INSERT INTO dept01 (dname,loc) VALUES ('�ѹ���','�λ�');
INSERT INTO dept01 (dname,loc) VALUES ('ȸ���','�뱸');
INSERT INTO dept01 (dname,loc) VALUES ('ȸ���','����');

CREATE TABLE emp01 (
  sabun int(11) NOT NULL AUTO_INCREMENT,
  name varchar(45) DEFAULT NULL,
  nalja datetime DEFAULT NULL,
  pay int(11) DEFAULT NULL,
  deptno int(11) DEFAULT NULL,
  PRIMARY KEY (sabun),
  KEY `emp01_fk_idx` (deptno),
  CONSTRAINT `emp01_fk` FOREIGN KEY (deptno) REFERENCES dept01 (deptno) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

alter table emp01 auto_increment=1;


INSERT INTO emp01 (name,nalja,pay,deptno) VALUES ('test1','2020-02-17 17:44:55',1000,1);
INSERT INTO emp01 (name,nalja,pay,deptno) VALUES ('test2','2020-02-17 17:44:55',2000,3);
INSERT INTO emp01 (name,nalja,pay,deptno) VALUES ('test4','2020-02-17 17:44:55',4000,2);
INSERT INTO emp01 (name,nalja,pay,deptno) VALUES ('test5','2020-02-17 17:44:55',5000,1);
INSERT INTO emp01 (name,nalja,pay,deptno) VALUES ('test6','2020-02-19 17:06:07',6000,1);
