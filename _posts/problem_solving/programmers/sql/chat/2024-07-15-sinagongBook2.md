---
title: "[정처기 실기] 시나공 2권"
categories: [Programmers, SQL, Chat]
tags: [Programmers, SQL, Oracle, chat] 
---

## Sinagong
### book2

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
