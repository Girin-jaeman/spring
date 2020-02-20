use class03;
drop table emp01;
drop table dept01;
CREATE TABLE emp01 (
  sabun int(11) NOT NULL AUTO_INCREMENT,
  name varchar(45) DEFAULT NULL,
  nalja datetime DEFAULT NULL,
  pay int(11) DEFAULT NULL,
  deptno int(11) DEFAULT NULL,
  PRIMARY KEY (sabun),
  KEY `emp01_fk_idx` (deptno),
  CONSTRAINT `emp01_fk` FOREIGN KEY (deptno) REFERENCES dept01 (deptno) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO emp01 (sabun,name,nalja,pay,deptno) VALUES (2,'test1','2020-02-17 17:44:55',1000,1);
INSERT INTO emp01 (sabun,name,nalja,pay,deptno) VALUES (3,'test2','2020-02-17 17:44:55',2000,3);
INSERT INTO emp01 (sabun,name,nalja,pay,deptno) VALUES (5,'test4','2020-02-17 17:44:55',4000,2);
INSERT INTO emp01 (sabun,name,nalja,pay,deptno) VALUES (6,'test5','2020-02-17 17:44:55',5000,1);
INSERT INTO emp01 (sabun,name,nalja,pay,deptno) VALUES (7,'test6','2020-02-19 17:06:07',6000,1);
