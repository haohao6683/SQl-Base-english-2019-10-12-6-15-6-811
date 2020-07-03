show DATABASES
CREATE DATABASE student_examination_sys
use student_examination_sys

CREATE TABLE student(
   id VARCHAR(100) NOT NULL,
   name VARCHAR(100) NOT NULL,
   age INT NOT NULL,
   sex VARCHAR(10) NOT NULL,
   PRIMARY KEY (id)
)

CREATE TABLE subject(
   id VARCHAR(100) NOT NULL,
   subject VARCHAR(100) NOT NULL,
   teacher VARCHAR(100) NOT NULL,
   description VARCHAR(500) NOT NULL,
   PRIMARY KEY (id)
)

CREATE TABLE score(
   id INT UNSIGNED AUTO_INCREMENT,
   student_id VARCHAR(100) NOT NULL,
   subject_id VARCHAR(100) NOT NULL,
   score DOUBLE NOT NULL,
	 PRIMARY KEY (id),
   FOREIGN KEY (student_id) REFERENCES student(id),
	 FOREIGN KEY (subject_id) REFERENCES subject(id)
)

INSERT INTO student ( id,name,age,sex)
                       VALUES
                       ( '001','zhangsan','18','male'),
											 ( '002','lisi','20','female');

INSERT INTO subject ( id,subject,teacher,description)
                       VALUES
                       ( '1001','Chinese','Mr.Wang','the exam is easy'),
											 ( '1002','math','Miss Liu','the exam is difficult');
											 
INSERT INTO score (id,student_id,subject_id,score)
                       VALUES
                       ( '1','001','1001','80'),
											 ( '2','002','1002','60'),
											 ( '3','001','1001','70'),
											 ( '4','002','1002','60.5');
