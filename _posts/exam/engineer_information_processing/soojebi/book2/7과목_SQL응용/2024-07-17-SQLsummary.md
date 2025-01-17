---
categories: [Certificate, "[정보처리기사 Book2]", 7과목SQL]
---

OR REPLACE : 기존 프로시저 존재 시에 현재 컴파일하는 내용으로 덮어씀

MODE
* IN : 운영체제에서 프로시저로 값을 전달하는 모드
* OUT : 프로시저에서 처리된 결과를 운영체제로 전달하는 모드
* INOUT : 둘다 사용

데이터 타입
* CHAR : 고정 길이 문자열 데이터
* VARCHAR : 가변 길이 문자열 데이터
* NUMBER : 숫자를 저장하는 데이터 타입

IS : PL/SQL의 블록을 시작. AS도 사용 가능. 

**시작/종료부(BEGIN/END)**
프로시저의 시작과 끝

**제어부(CONTROL)**

조건문
* IF 문

```SQL
IF 조건 THEN 
  문장;
ELSEIF 조건 THEN
  문장;
  ~
ELSE
  문장;
END IF;
```
* 간단한 케이스문

```SQL
CASE 변수 
  WHEN 값1 THEN
    SET 명령어;
  WHEN 값2 THEN
    SET 명령어;
  ~ 
  ELSE
    SET 명령어;
END CASE;
```
* 검색된 케이스문

```SQL
CASE 
   WHEN 조건1 THEN
     SET 명령어;
   WHEN 조건2 THEN 
     SET 명령어;
   ...
   ELSE
     SET 명령어;
END CASE;
```

반복문
* LOOP문

```SQL
LOOP
  문장; 
  EXIT WHEN 탈출조건; 
END LOOP;
```

* WHILE문

```SQL
WHILE 반복 조건 LOOP
  문장;
  EXIT WHEN 탈출조건;
END LOOP; 
```

* FOR LOOP문

```SQL
FOR 인덱스 IN 시작 값 .. 종료 값
  LOOP
  문장;
END LOOP;
```

**프로시저 SQL**
데이터 관리를 위한 CRUD를 수행하는 부분


**예외부(EXCEPTION)**
```SQL
EXCEPTION
   WHEN 조건 THEN 
     SET 명령어;
```

**실행부(TRANSACTION)**
수행한 DML을 DBMS에 반영할지 복구할지를 결정
* COMMIT : 하나의 트랜잭션이 성공적으로 끝나고, 데이터베이스가 일관성이 있는 상태에 있을 때 하나의 트랜잭션이 끝났을 때 사용하는 연산
* ROLLBACK : 하나의 트랜잭션이 비정상적으로 종료되어 트랜잭션 원자성이 깨질 경우 처음부터 다시 시작하거나, 부분적으로 연산을 취소하는 연산

#### 프로시저 호출문 작성 
* 응용 프로그램에서 호출하거나 내부 스케줄러에 의해 배치 작업을 수행하는 경우 사용
* EXECUTE 또는 EXEC 명령어를 이용하여 프로시저 실행 

### 사용자 정의함수
#### 사용자 정의함수 개념
* 절차형 SQL을 활용하여 일련의 SQL 처리를 수행하고, 수행 결과를 단일 값으로 반환할 수 있는 절차형 SQL
* DBMS에서 제공되는 공통적 함수 이외에 사용자가 직접 정의하고 작성

#### 사용자 정의함수 구성
* 기본적인 부분은 프로시저와 동일하고 반환에서의 부분만 프로시저와 다름
* 종료 시 단일 값을 반환한다는 것이 프로시저와의 가장 큰 차이점

구성
* 선언부(DECLARE)
* 시작/종료부(BEGIN/END)
* 제어부(CONTROL)
* SQL : 조회 용도로 SELECT 문 사용, CRUD 사용 X
* 에외부(EXCEPTION)
* 반환부(RETURN) : 호출문에 대한 함수 값을 반환

#### 사용자 정의함수 구문 
**선언부(DECLARE)**
```SQL
CREATE [OR REPLACE] FUNCTION 함수명
RETURN 데이터_타입
파라미터_명 [MODE] 데이터_타입
...
IS
변수 선언
```
**시작/종료부(BEGIN/END)**
실행 시작과 종료를 알림

**제어부(CONTROL)**
IF문 CASE문

**SQL**
SETLECT만 가능

**예외부(EXCEPTION)**
예외상황을 수행

**반환부(RETURN)**
사용자 정의함수를 호출한 쿼리에 반환하는 단일 값을 정의

#### 사용자 정의함수 예시
```SQL
SELECT GET_AGE('19900101')
  FROM DUAL; # 생년월일 값을 가지고 나이를 조회

UPDATE EMPLOYEE_INFO_T
  SET AGE = GET_AGE(BIRTH_DATE)
WHERE EMPLYEE_ID = '2017001'; # 직원 아이디값을 활용하여 생일 컬럼 내의 값을 직접 활용하여 나이를 수정
```

### 트리거
#### 트리거의 개념
* 특정 테이블에 CRUD가 발생하면 DBMS에서 자동적으로 실행되도록 구현된 프로그램
* 이벤트는 전체 트랜잭션 대상과 각행에 의해 발생되는 경우 모두를 포함할 수 있으며 테이블 뷰, DB 작업을 대상으로 정의할 수 있음

#### 트리거의 목적
* 특정 테이블에 대한 데이터 변경을 시작점으로 설정하고, 그와 관련된 작업을 자동적으로 수행하기 위해
* 이벤트와 관련된 테이블의 데이터 CRUD 작업을 DBMS가 자동적으로 실행시키는데 활요
* 데이터 무결성 유지 및 로그 메시지 출력 등의 별도 처리를 위해 트리거를 사용

#### 트리거의 종류
* 행 트리거 : 데이터 변화가 생길 때마다 진행
* 문장 트리거 : 트리거에 의해 단 한 번 실행

#### 트리거의 구성
* 프로시저, 사용자 정의 함수와 문법 같음
* 반환 값이 없고, DML을 주 목적으로 한다는 점에서 프로시저와 유사
* ENENT 명령어를 통해 트리거 실행을 위한 이벤트를 인지한다는 점, 외부 변수 IN/OUT이 없다는 점은 프로시저나 사용자 정의함수와 다름

구성
* 선언부(DECLARE)
* 이벤트부(EVENT)
* 시작/종료부(BEGIN/END)
* 제어부(CONTROL)
* SQL : DML을 주로 사용, DDL(TRUNCATE)을 사용
* 예외부(EXCEPTION)

#### 트리거의 구문

**선언부**
```SQL
CREATE [OR REPLACE] TRIGGER 트리거명
```
**이벤트부(EVENT)**
트리거 타이밍, 트리거 이벤트, 트리거를 수행할 테이블을 지정

```SQL
순서 유형 ON 테이블명
[FOR EACH ROW]
```

BEFORE : INSERT, UPDATE, DELETE를 수행하기 전에 트리거가 실행하도록 지정하는 명령
AFTER : 수행 후 실행

**시작/종료부(BEFIN/END)**
**제어부(CONTROL)**
**SQL**
* CRUD
* 행 트리거 안에서 OLD 및 NEW 수식자 접두어를 붙여 데이터 변경 전후 열의 값을 참조

**예외부(EXCEPTION)**

#### 트리거 작성 시 주의사항
TCL 사용 불가 : COMMIT, ROLLBACK 등의 트랜잭션 제어어(TCL) 사용시 컴파일 에러 발생
오류에 주의 : 트리거 실행의 원인을 제공한 데이터 작업에도 영향

## 응용 SQL 작성하기
### 집계성 SQL 작성
#### 데이터 분석 함수의 개념
* 총합, 평균 등의 데이터 분석을 위해서는 복수 행 기준의 데이터를 모아서 처리하는 것을 목적으로 하는 다중 행 함수
* 복수 행을 그룹별로 모아 놓고 그룹당 단일 계산 결과를 반환
* GROUP BY 구문을 활용
* SELECT, HAVING, ORDER BY 등을 구문에 활용

#### 데이터 분석 함수의 종류
* 집계 함수 : 여러 행 또는 테이블 전체 행으로부터 하나의 결괏값을 반환하는 함수
* 그룹 함수 : 소그룹 간의 소계 및 중계 등의 중간 합계 분석 데이터를 산출하는 함수
* 윈도 함수 : 데이터베이스를 사용한 온라인 분석 처리 용도로 사용하기 위해서 표준 SQL에 추가된 기능

#### 집계 함수
여러 행 또는 테이블 전체 행으로부터 하나의 결괏 값을 반환하는 함수

**집계 함수 구문**
```SQL
SELECT 컬럼1, 컬럼2, ..., 집계함수
  FROM 테이블명
[WHERE 조건]
GROUP BY 컬럼1, 컬럼2, ...
[HAVING 조건식(집계함수 포함)]
```

GROUP BY 구문 
* NULL 값을 가지는 ROW는 제외한 후 산출
* SELECT에서 사용하는 것과 같은 ALIAS 사용 불가
* WHERE 구문안에 포함되지 않음
* WHERE 구문은 GROUP BY보다 먼저 실행되고, 대상이 되는 단일 행을 사전에 선별하는 역할
* 실제 구체적 데이터 분석값을 보고자 하는 컬럼 단위를 선정할 때 사용되는 기준

HAVING 구문
* WHERE 구문 내에는 사용할 수 없는 집계 함수의 구문을 적용하여 복수 행의 계산 결과를 조건별로 적용하는 데 사용
* 일반적으로 GROUP BY 뒤에 기재하며, GROUP BY 구문의 기준 항목이나 소그룹 집계 함수를 활용한 조건을 적용하는 데 사용
* GROUP BY 및 집계 함수에 대한 WHERE 구문

**집계 함수의 종류**
* COUNT
* SUM
* AVG
* MAX
* MIN
* STDDEV : 표준편차 
* VARIAN : 분산

#### 그룹 함수
테이블의 전체 행을 하나 이상의 컬럼을 기준으로 컬럼 값에 따라 그룹화하여 그룹별로 결과를 출력하는 함수

**그룹 함수의 유형**
**ROLLUP 함수** 
* ROLLUP에 의해 지정된 컬럼은 소계 등 중간 집계 값을 산출하기 위한 그룹 함수
* 지정 컬럼의 수보다 하나 더 큰 레벨만큼의 ㅣ중간 집계 값이 생성
* ROLLUP의 지정 컬럼은 계층별로 구성되기 때문에 순서가 바뀌면 수행 결과가 바뀜

```SQL
SELECT 컬럼1, 컬럼2, ..., 그룹 함수 
  FROM 테이블명
[WHERE ...]
GROU BY [컬럼 ..] ROLLUP 컬럼
[HAVING ..]
[ORDER BY ..]
```

* 소계 집계 대상이 되는 컬럼을 ROLLUP 뒤에 기재하고, 소계 집계 대상이 아닌 경우 GROUP BY 뒤에 기재
* SELECT 뒤에 포함되는 컬럼이 GROUP BY 또는 ROLLUP 뒤에 기재되어야 함
* ORDER BY 구문을 활용해 계층 내 정렬에 사용이 가능

**CUBE 함수**
* 결합 가능한 모든 값에 대해 다차원 집계를 생성하는 그룹 함수 
* 연산이 많아 시스템에 부담을 줌 

```SQL
SELECT 컬럼명1, ..., 그룹 함수
  FROM 테이블명
[WHERE ...]
  GROUP BY [컬럼명1, ..] CUBE(컬럼명a, ...)
[HAVING]
[ORDER BY ...]
```

* ROLLUP은 소계, 중간 집계를 나타내 주지만, CUBE는 결합 가능한 모든 값에 대해 다차원 집계 생성. 세분화된 소계가 구해짐

**GROUPING SETS 함수**
* 집계 대상 컬럼들에 대한 개별 집계를 구함. ROLLUP이나 CUBE와는 달리 컬럼 간 순서와 무관한 결과를 얻을 수 있는 그룹 함수
* ORDER BY를 사용하여 집계 대상 그룹과의 표시 순서를 조정하여 체계적으로 보여줄 수 있음

```SQL
SELECT 컬럼명1, ..., 그룹 함수
  FROM 테이블명
[WHERE ...]
GROUP BY [컬럼명1, ...]
            GROUPING SETS(컬럼명1, ...)
[HAVING ...]
[ORDER BY ...]
```

#### 윈도 함수
* 데이터베이스를 사용한 온라인 분석 처리 용도로 사용하기 위해서 표준 SQL에 추가된 함수
* OLAP 함수

```SQL
SELECT 함수명(파라미터) 
  OVER 
 ([PARTITION BY 컬럼1, ...])
 [ORDER BY 컬럼A, ...]
  FROM 테이블명
```

* PARTITION BY는 선택 항목이며, 순위를 정할 대상 범위의 컬럼을 설정
* PARTITION BY구에는 GROUP BY구가 가진 집약 기능이 없으며, 이로 인해 레코드가 줄어들지 않음
* PARTITION BY를 통해 구분된 레코드 집합을 윈도라고 함
* 윈도 함수에는 OVER 문구가 필수적으로 포함
* ORDER BY 뒤에는 SORT 컬럼을 입력(어떤 열을 어떤 순서로 순위를 정할지)

윈도 함수의 분류
* 순위 함수 : 레코드의 순위를 계산하는 함수(RANK, DENSE_RANK, ROW_NUMBER)
* 행순서 함수 : 레코드에서 가장 먼저 나오거나 가장 뒤에 나오는 값. 이전/이후 값들을 출력하는 함수(FIRST_VALUE, LAST_VALUE, LAG, LEAD 함수 존재)
* 그룹 내 비율 함수 : 백분율을 보여주거나 행의 순서별 백분율 등 비율과 관련된 통계를 보여주는 함수(RATIO_TO_REPORT, PERCENT_RANK) 

순위 함수 
* RANK : 특정 컬럼에 대한 순위를 구함. 동일 순위의 레코드 존재 시 후 순위는 넘어감
* DENSE_RANK : 특정 컬럼에 대한 순위를 구함. 동일 순위의 레코드 존재 시에도 후순위를 넘어가지 않음
* ROW_NUMBER : 특정 컬럼에 대한 순위를 구함. 동일 순위의 값이 존재해도 이와 무관하게 연속 번호를 부여

```SQL
SELECT NAME, 
       SALARY
       RANK( ) OVER (ORDER BY SALARY DESC) A, 
       DENSE_RANK( ) OVER (ORDER BY SALARY DESC) B, 
       ROW_NUMBER( ) OVER (ORDER VY SALARY DESC) C
FROM EMPLOYEE;
```

행순서 함수
* FIRST_VALUE : 파티션별 윈도우에서 가장 먼저 나오는 값을 찾음. 집계 함수의 MIN과 동일한 결과를 출력
* LAST_VALUE : 파티션별 윈도우에서 가장 늦게 나오는 값을 찾음. 집계 함수의 MAX와 동일한 결과를 출력
* LAG : 파티션별 윈도우에서 이전 로우의 값 반환
* LEAD : 파티션별 윈도우에서 이후 로우의 값 반환

```SQL
SELECT NAME, 
       SALARY, 
       FIRST_VALUE(NAME) OVER (ORDER BY SALARY DESC) A, 
       LAST_VALUE(NAME) OVER (ORDER BY SALARY DESC) B,
       LAG(NAME) OVER (ORDER BY SALARY DESC) C, 
       LEAD(NAME) OVER (ORDER BY SALARY DESC) D
FROM EMPLOYEE;
```

그룹 내 비율 함수
* RATIO_TO_REPORT : 주어진 그룹에 대해 합을 기준으로 각 로우의 상대적 비율을 반환하는 함수. 0~1의 범위를 가짐. 
* PERCENT_RANK : 주어진 그룹에 대해 제일 먼저 나오는 것을 0으로, 제일 늦게 나오는 것을 1로 하여, 값이 아닌 행의 순서별 백분율을 구하는 함수. 0~1의 범위를 가짐

```SQL
SELECT NAME, 
       SALARY, 
       RATIO_TO_REPORT (NAME) OVER (ORDER BY SALARY DESC) A, 
       PERCENT_RANK(NAME) OVER (ORDER BY SALARY DESC) B
  FROM EMPLOYEE;
```

### 특정 기능 수행 SQL문 작성
#### 응용시스템 DBMS 접속 기술
자바 데이터베이스 연결(JDBC)
* 대표적인 자바에 사용하는 DBMS 접근 기술
* SQL을 사용하여 DBMS에 질의하고 데이터를 조작하는 API를 제공

```java
// 주요 함수
connection = dataSource.getConncection(); // JDBC 연결
sql_exec = connection.preparestatement(SQL_QUERY); // preparestatement로 쿼리 실행
sql_exec.setString(1, user_name); // 첫 번째 물음표(query에 물음표로 지정) user_name이라는 변수 값을 전달
sql_result = sql_exec.executeQuery() // JDBC 쿼리 실행
```

MyBatis
* SQL Mapping 기반 오픈 소스 Access Framework로, DBMS에 질의하기 위한 SQL 쿼리를 별도의 XML 파일로 분리하고 MApping을 통해서 SQL을 실행
* DBMS 의존도가 높고 SQL 질의 언어를 사용. 국내에서 많이 사용
* 복잡한 JDBV 코드를 단순화
* SQL 그대로 사용
* Spring 기반 프레임워크와 통합
* 우수한 성능

#### MyBatis 작성 문법
SQL 문장의 입력 파라미터 사용 방법 : #{파라미터 명}으로 처리

동적 SQL : 조건에 따라 SQL 구문 자체를 변경할 수 있음. ```<if>, <foreach>, <choose when otherwise>``` 사용.

절차형 SQL 호출
* 사용자 정의함수, 트리거, 프로시저의 실행이 가능 
* 주로 프로시저를 호출
* 프로시저 호출 시 statementType을 반드시 'CALLABLE'로 설정해야 하고, 호출 전에 'CALL'문장을 사용. 

### 데이터 제어어 명령문 작성 
#### 데어터 제어어(DCL; Data Control Language)의 개념
데이터베이스 관리자가 데이터 보안, 무결성 유지, 병행 제어, 회복을 위해 관리자가 사용하는 제어용 언어

#### 데어터 제어어(DCL)의 유형
* GRANT : 사용 권한 부여.
* REVOKE : 사용 권한 취소. 

#### 데이터 제어어(DCL) 명령문
관리자(DBA: Database Administrator)가 사용자에게 데이터베이스에 대한 권한을 부여

```sql
GRANT 권한 ON 테이블 TO 사용자
WITH GRANT OPTION; # WITH GRANT OPTION은 사용자가 권한을 받고난 후 다른 사람들과 권한을 나눠가질 수 있음 

REVOKE 권한 ON 테이블 FROM 사용자
CASCADE CONSTRAINTS; # CASCADE CONSTRAINTS는 연쇄적인 권한을 해제할 때 입력
```
