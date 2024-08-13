---
title: "[정처기 실기] 시나공 2권"
categories: [Programmers, SQL, Chat]
tags: [Programmers, SQL, Oracle, chat] 
---

## Sinagong
### book2

> 96 Expected question

```sql
-- Create the department table (학과)
CREATE TABLE 직원 (
    사번 Int(15) Auto_Increment Primary key,
    이름 varchar(7) Null,
    학과 varchar(10),
    성적 Int(3)
);

-- Sample data for department table
Insert Into 직원 (사번, 이름, 학과, 성적) Values 
  ('53422', '이병남', '경영', '50'),
  ('6541', '김일수', '캐드', '90'),
  ('8651', '이학민', '미술', '80');

Select * from 직원;

CREATE Table 성과금 (
  부서_사번 Int(15),
  휴가_성과금 Int(100),
  능력_성과금 Int(100),
  Primary key (부서_사번),
  foreign key (부서_사번) references 직원(사번)
);

Insert Into 성과금 (부서_사번, 휴가_성과금, 능력_성과금) Values ('53422', '200000', '1500000');

Select 이름 from 성과금, 직원
where 성적 >= 80;

```

```
Output:

+--------+-----------+--------+--------+
| 사번   | 이름      | 학과   | 성적   |
+--------+-----------+--------+--------+
|  53422 | 이병남    | 경영   |     50 |
+--------+-----------+--------+--------+
+---------------+------------------+------------------+--------+-----------+--------+--------+
| 부서_사번     | 휴가_성과금      | 능력_성과금      | 사번   | 이름      | 학과   | 성적   |
+---------------+------------------+------------------+--------+-----------+--------+--------+
|         53422 |           200000 |          1500000 |  53422 | 이병남    | 경영   |     50 |
+---------------+------------------+------------------+--------+-----------+--------+--------+

+-----------+
| 이름      |
+-----------+
| 김일수    |
| 이학민    |
+-----------+

사번(문자 15), 이름(문자 4), 전화번호(문자 20), 부서번호(문자 10), 경력(숫자), 기본급(숫자) 속성을 가진다
사번 속성은 기본키이다
이름은 반드시 입력하여야 한다
잭원 텡비ㅡㄹ의 부선번호는 부서 테;이블에 있는 부선번호를 참조한다.
기본급은 최소한 1,000,000원이상 이어야 한다.
전화번호는 중복 될 수 없다
```

> 118 q-1

```sql
-- Create the department table (학과)
CREATE TABLE department (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(16) NOT NULL UNIQUE
);

-- Sample data for department table
INSERT INTO department (name) VALUES ('Computer Science');
INSERT INTO department (name) VALUES ('Elec Engineering');
INSERT INTO department (name) VALUES ('Mec Engineering');

-- Create the student table (학생)
CREATE TABLE student (
    학번 CHAR(10) UNIQUE NOT NULL,
    이름 VARCHAR(8) NOT NULL,
    주민번호 CHAR(8),
    학과_id INT,
    FOREIGN KEY (학과_id) REFERENCES department(id)
);

-- Sample data for student table
INSERT INTO student (학번, 이름, 주민번호, 학과_id) VALUES ('2023010001', '홍길동', '90010101', 1);
INSERT INTO student (학번, 이름, 주민번호, 학과_id) VALUES ('2023010002', '김영희', '95020202', 2);
INSERT INTO student (학번, 이름, 주민번호, 학과_id) VALUES ('2023010003', '이철수', '96030303', 3);


Alter Table Student Add 주소 Varchar(100);

UPDATE student SET 주소 = 'Seoul, Gangnam-gu, Apgujeong-dong' WHERE 학번 = '2023010001';
UPDATE student SET 주소 = 'Busan, Haeundae-gu, Jangsan-dong' WHERE 학번 = '2023010002';
UPDATE student SET 주소 = 'Incheon, Namdong-gu, Guwol-dong' WHERE 학번 = '2023010003';

-- View the data
SELECT * FROM student;
SELECT * FROM department;
```

```
Output:

+------------+-----------+--------------+-----------+-----------------------------------+
| 학번       | 이름      | 주민번호     | 학과_id   | 주소                              |
+------------+-----------+--------------+-----------+-----------------------------------+
| 2023010001 | 홍길동    | 90010101     |         1 | Seoul, Gangnam-gu, Apgujeong-dong |
| 2023010002 | 김영희    | 95020202     |         2 | Busan, Haeundae-gu, Jangsan-dong  |
| 2023010003 | 이철수    | 96030303     |         3 | Incheon, Namdong-gu, Guwol-dong   |
+------------+-----------+--------------+-----------+-----------------------------------+
+----+------------------+
| id | name             |
+----+------------------+
|  1 | Computer Science |
|  2 | Elec Engineering |
|  3 | Mec Engineering  |
+----+------------------+
```


> 118-q3

```sql
CREATE TABLE patient (
    id VARCHAR(5) PRIMARY KEY,
    name VARCHAR(10),
    sex CHAR(1),
    phone VARCHAR(20),
    CONSTRAINT sex_ck CHECK(sex='f' or sex='m'),
    CONSTRAINT id_fk FOREIGN KEY(id) REFERENCES doctor(doc_id)
);
```

`sex  속성은 f 또는 m값만 갖도록 한다 (제약조건명: sec_ck)`
`id는 doctor 테치블에 있는 doc_id를 참조한다 (제약조건면: id_fk)`

Complete usecase

```sql
CREATE TABLE doctor (
    doc_id VARCHAR(5) PRIMARY KEY,
    name VARCHAR(15),
    specialty VARCHAR(20)
);

-- Inserting sample doctors
INSERT INTO doctor (doc_id, name, specialty) 
VALUES 
('D001', 'Dr. Smith', 'Cardiology'), 
('D002', 'Dr. Johnson', 'Neurology'), 
('D003', 'Dr. Lee', 'Pediatrics');

Select * from doctor;

CREATE TABLE patient (
    id VARCHAR(5) PRIMARY KEY,      -- Unique identifier for each patient
    name VARCHAR(10),
    sex CHAR(1),
    phone VARCHAR(20),
    doctor_id VARCHAR(5),           -- Foreign key referencing doctor's id
    CONSTRAINT sex_ck CHECK (sex = 'f' OR sex = 'm'),
    CONSTRAINT doctor_id_fk FOREIGN KEY (doctor_id) REFERENCES doctor(doc_id)
);


-- Updating the patient table to link with doctor IDs
UPDATE patient SET id = 'D001' WHERE id = 'P001';
UPDATE patient SET id = 'D002' WHERE id = 'P002';
UPDATE patient SET id = 'D003' WHERE id = 'P003';

-- Assuming the doctor table has the following doctors:
-- doc_id = 'D001', 'D002', 'D003'
INSERT INTO patient (id, name, sex, phone) 
VALUES 
('P001', 'Alice', 'f', '010-1234-5678'), 
('P002', 'Bob', 'm', '010-2345-6789'), 
('P003', 'Carol', 'f', '010-3456-7890');

-- These IDs must match existing doctor IDs for the foreign key to work.

Select * from patient;
```

```
Output:

+--------+-------------+------------+
| doc_id | name        | specialty  |
+--------+-------------+------------+
| D001   | Dr. Smith   | Cardiology |
| D002   | Dr. Johnson | Neurology  |
| D003   | Dr. Lee     | Pediatrics |
+--------+-------------+------------+
+------+-------+------+---------------+-----------+
| id   | name  | sex  | phone         | doctor_id |
+------+-------+------+---------------+-----------+
| P001 | Alice | f    | 010-1234-5678 | NULL      |
| P002 | Bob   | m    | 010-2345-6789 | NULL      |
| P003 | Carol | f    | 010-3456-7890 | NULL      |
+------+-------+------+---------------+-----------+
```

> 118 q-4

```sql
CREATE TABLE Instrctor (
    id CHAR(5),
    name CHAR(10),
    dept CHAR(15)
    PRIMARY KEY(ID),
    FOREIGN KEY(dept) REFERENCES Department(name)
    ON DELETE SET NULL
    ON UPDATE CASCADE
);
```

`Department테이블에서 튜플이 삭제 되면... `
`Department dept속성이 변경되면 Instructor 의 관련되...`

> 118 q-5

```sql
INSERT job CHAR(20) INTO TABLE patient

ALTER TABLE patient
job CHAR(20);

```
속성을 추가시 `ALTER`

> 119 Q-6

```sql
CREATE VIEW CC(ccid, ccname, instname) AS
SELECT Course.id, Course.name, Instructor.name
FROM Course, Instructor
WHERE Course.instructor = Instructor.id

-- use below to create view from table patient and docgtor
Select * from patient;

CREATE VIEW PatientDoctorView (patient_id, patient_name, sex, phone, doctor_id, doctor_name) AS
SELECT 
    patient.id AS patient_id,
    patient.name AS patient_name,
    patient.sex,
    patient.phone,
    doctor.doc_id AS doctor_id,
    doctor.name AS doctor_name
FROM 
    patient
JOIN 
    doctor ON patient.doctor_id = doctor.doc_id;


```
cc 뷰는 ccid, ccname instname속성을 갖는다

cc뷰는 course 테이블의 id name Instructor테이블의 name 속성

힌트 `create select from where` 사용함
#### chat exposition
Your SQL statement for creating a view is correct in its structure, but it's generally better practice to use explicit JOIN syntax rather than implicit joins using the WHERE clause for better readability and maintainability.

Here's the corrected and improved version of your SQL statement using explicit JOIN syntax:

```sql
CREATE VIEW CC(ccid, ccname, instname) AS
SELECT Course.id AS ccid, 
       Course.name AS ccname, 
       Instructor.name AS instname
FROM Course
JOIN Instructor ON Course.instructor = Instructor.id;
```

#### Explanation:

- `CREATE VIEW CC(ccid, ccname, instname) AS`: This creates a view named `CC` with columns `ccid`, `ccname`, and `instname`.
- `SELECT Course.id AS ccid, Course.name AS ccname, Instructor.name AS instname`: This selects the `id` and `name` from the `Course` table and the `name` from the `Instructor` table. The `AS` keyword is used to rename these columns to `ccid`, `ccname`, and `instname` respectively.
- `FROM Course JOIN Instructor ON Course.instructor = Instructor.id`: This specifies that the `Course` table is joined with the `Instructor` table based on the `instructor` column in the `Course` table matching the `id` column in the `Instructor` table.

This explicit JOIN syntax is preferred because it makes the relationship between the tables clearer and helps prevent errors that might arise from complex WHERE clauses in larger queries.

> 118 q-8
> 
```sql
CREATE UNIQUE INDEX stud_idx
  ON Student(ssn ASC);
```

> 118 q-9

```sql
CREATE DOMAIN 직위 VARCHAR2(20)
(1번문제)
(2번문제) VALID-직위( 3번문제 );
```
1 - DEFAULT 2 - CONSTRAinT 3. CHECk ( VALUE IN('사원', '대리', '과장', '이사', '사장'))

#### chat correction
exposition:

	1.	SQL keywords and identifiers should be separated by spaces.
	2.	Double quotes should be used around default values and strings.
	3.	Constraint names cannot have spaces or special characters like parentheses.
	4.	Ensure the CHECK constraint is spelled correctly and has no unnecessary spaces.

the corrected SQL statement:
```sql
CREATE DOMAIN 직위 AS VARCHAR2(20)
DEFAULT '사원'
CONSTRAINT VALID_직위 CHECK (VALUE IN ('사원', '대리', '과장', '이사', '사장'));
```

Explanation:

	•	CREATE DOMAIN 직위 AS VARCHAR2(20): This creates a new domain (similar to a custom data type) named 직위 with the type VARCHAR2(20).
	•	DEFAULT '사원': This sets the default value of the domain to ‘사원’.
	•	CONSTRAINT VALID_직위: This names the constraint VALID_직위.
	•	CHECK (VALUE IN ('사원', '대리', '과장', '이사', '사장')): This specifies the allowed values for this domain using a CHECK constraint.

Example of Use:

Assuming that your SQL environment supports the CREATE DOMAIN statement (such as in some database systems like PostgreSQL, though VARCHAR2 is typically Oracle-specific), you can then use this domain in table definitions like so:
```sql
CREATE TABLE 직원 (
    직원ID NUMBER PRIMARY KEY,
    이름 VARCHAR2(50),
    직위 직위 -- Using the domain created earlier
);
```
This ensures that the 직위 column in the 직원 table can only contain one of the specified values (‘사원’, ‘대리’, ‘과장’, ‘이사’, ‘사장’), with ‘사원’ being the default if no value is provided.

> 118 q-10

```sql

```

> 121 q6

```sql
SELECT name
FROM Product
WHERE price IS NULL
ORDER BY name;
```

> 121 q7

```sql
SaECT DISTINCT 과목
FROM 학생
MHERE 학년 >= 3 AND 점수 >= 80;
```
**콤마**와 AND차이는?

```sql

```


```sql

```



```sql

```

```sql

```


```sql

```


```sql

```
