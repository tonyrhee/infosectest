---
categories: [Study, Spring]
---

## **레이어드 아키텍처(Layered Architecture) 란?**


<br>
**들어가기 전에**

---

웹 어플리케이션을 만들 때 자주 사용하는 레이어드 아키텍처(Layered Architecture)에 대해 알아보도록 한다.


<br>
**학습 목표**

---

1. 웹 어플리케이션 개발시 레이어드 아키텍처(Layered Architecture)가 사용되는 이유에 대해 이해한다.
2. 웹 어플리케이션 개발시 각 레이어의 구성요소에 대해서 이해한다.


<br>
**핵심 개념**

---

- Controller
- Service
- Repository


<br>
**Controller에서 중복되는 부분을 처리하려면?**

---

- 별도의 객체로 분리한다.
- 별도의 메소드로 분리한다.
- 예를 들어 쇼핑몰에서 게시판에서도 회원 정보를 보여주고, 상품 목록 보기에서도 회원 정보를 보여줘야 한다면 회원 정보를 읽어오는 코드는 어떻게 해야 할까?
- 회원 정보를 읽어오는 작업은 여러 컨트롤러에서 필요할 수 있다. 이런 경우에는 회원 정보에 관련된 비지니스 로직을 처리하는 서비스 객체를 만들고, 각 컨트롤러에서 이를 호출하여 사용하면 된다. 이렇게 하면 회원 정보를 읽어오는 코드를 각각의 컨트롤러에서 중복해서 구현할 필요가 없어진다.


<br>
**컨트롤러와 서비스**

---

- 웹 페이지 개발에서 중복되는 요소를 효율적으로 처리하기 위해 서비스 객체를 활용하는 것은 매우 중요하다.일반적으로 웹 애플리케이션은 여러 기능을 가지고 있으며, 각 기능은 유사한 작업을 수행할 수 있다. 예를 들어, 게시판을 보여주는 기능과 상품 목록을 보여주는 기능은 각각의 기능에서 데이터를 조회하고 처리하는 과정이 유사할 수 있다.
- 서비스 객체는 이러한 중복되는 작업을 중앙 집중화하여 처리할 수 있다. 각각의 컨트롤러에서 중복되는 코드를 서비스 객체로 분리하면 코드의 재사용성과 유지보수성이 향상된다. 또한, 비지니스 로직의 변경이 필요할 경우 서비스 객체 내부에서만 수정하면 되므로 다른 부분에 영향을 미치지 않는다.
- 비지니스 메소드를 별도의 Service객체에서 구현하도록 하고 컨트롤러는 Service객체를 사용하도록 한다.

![이미지](/assets/img/study/spring/%EB%A0%88%EC%9D%B4%EC%96%B4%EB%93%9C_%EC%95%84%ED%82%A4%ED%85%8D%EC%B2%98(Layered%20Architecture)%EB%9E%80%3F(1).png)

- 상품 서비스 객체를 사용하여 상품에 관련된 비지니스 로직을 처리하면, 상품 관련 기능을 필요로 하는 모든 컨트롤러에서 이를 재사용할 수 있다. 이렇게 하면 코드의 중복을 줄이고 효율적인 개발을 할 수 있다.
![alt text](/assets/img/study/spring/레이어드_아키텍처(Layered Architecture)란_(1).png)

<br>
**서비스(Service)객체란?**

---

비지니스 로직(Business logic)을 수행하는 메소드를 가지고 있는 객체를 서비스 객체라고 한다. 보통 하나의 비지니스 로직은 하나의 트랜잭션으로 동작한다.


<br>
**트랜잭션(Transaction)이란?**

---

- 트랜잭션은 하나의 논리적인 작업을 의미한다.
- 트랜잭션의 특징은 크게 4가지로 구분된다.
    1. 원자성 (Atomicity)
    2. 일관성 (Consistency)
    3. 독립성 (Isolation)
    4. 지속성 (Durability)

**원자성 (Atomicity)**

- 전체가 성공하거나 전체가 실패하는 것을 의미한다.
- 예를 들어, 출금 작업을 생각해보면 출금금액이 잔액보다 많을 경우 출금이 이루어지지 않아야 하며, 출금이 성공하면 잔액에서 출금액만큼을 빼고 이를 정보로 기록해야 한다. 이러한 작업들은 모두 하나의 논리적인 작업인 출금 작업으로 묶일 수 있다. 트랜잭션의 원자성은 이러한 작업들이 하나로 묶여서 원자적으로 실행되어야 함을 의미한다.
- "출금"이라는 기능의 흐름이 다음과 같다고 생각해보자.
    1. 잔액이 얼마인지 조회한다.
    2. 출금하려는 금액이 잔액보다 작은지 검사한다.
    3. 출금하려는 금액이 잔액보다 작다면 (잔액 - 출금액)으로 수정한다.
    4. 언제, 어디서 출금했는지 정보를 기록한다.
    5. 사용자에게 출금한다.
- 위의 작업이 4번에서 오류가 발생했다면 어떻게 될까? 4번에서 오류가 발생했다면, 앞의 작업을 모두 원래대로 복원을 시켜야 한다. 이를 rollback이라고 한다.  5번까지 모두 성공했을 때만 정보를 모두 반영해야 한다. 이를 commit 한다고 한다.
    
    즉, 어떤 단계에서라도 오류가 발생하면 이전 단계의 작업을 모두 취소하고 처음 상태로 되돌려야 한다. 이를  rollback이라고 하며, 모든 단계가 성공적으로 수행되었다면 변경 사항을 영구적으로 반영하고(commit) 트랜잭션을 종료한다.
    
- 이렇게 rollback 하거나 commit을 하게 되면 하나의 트랜잭션 처리가 완료된다.

**일관성 (Consistency)**

- 일관성은 트랜잭션의 작업 처리 결과가 항상 일관성이 있어야 한다는 것이다.
- 트랜잭션이 진행되는 동안에 데이터가 변경되더라도 업데이트된 데이터로 트랜잭션이 진행되는 것이 아니라, 처음에 트랜잭션을 진행하기 위해 참조한 데이터로 진행된다.
- 이렇게 함으로써 각 사용자는 일관성 있는 데이터를 볼 수 있는 것이다.

**독립성 (Isolation)**

- 독립성은 둘 이상의 트랜잭션이 동시에 병행 실행되고 있을 경우에 어느 하나의 트랜잭션이라도 다른 트랜잭션의 연산을 끼어들 수 없다. 하나의 특정 트랜잭션이 완료될 때까지, 다른 트랜잭션이 특정 트랜잭션의 결과를 참조할 수 없다.
- 또한, 트랜잭션의 독립성은 한 트랜잭션의 작업이 다른 트랜잭션에게 영향을 미치지 않음을 의미한다. 예를 들어, 동시에 두 명의 사용자가 데이터베이스를 사용하여 작업을 수행할 경우, 한 사용자의 트랜잭션이 commit 또는 rollback되기 전까지는 다른 사용자는 해당 변경 사항을 볼 수 없다. 각 트랜잭션은 독립적으로 실행된다.

**지속성 (Durability)**

- 지속성은 트랜잭션이 성공적으로 완료되었을 경우, 결과는 영구적으로 반영되어야 한다는 점이다.


<br>
**JDBC 프로그래밍에서 트랜잭션 처리 방법**

---

1. DB에 연결된 후 Connection객체의 setAutoCommit메소드에 false를 파라미터로 지정한다. 
2. 입력, 수정, 삭제 SQL이 실행을 한 후 모두 성공했을 경우 Connection이 가지고 있는 commit()메소드를 호출한다.

- JDBC 프로그래밍에서 트랜잭션 처리를 위해 Connection 객체를 활용할 수 있다. 일반적으로 Connection 객체의 setAutoCommit() 메서드를 사용하여 트랜잭션을 제어한다.
- 기본적으로 setAutoCommit() 메서드의 디폴트 값은 true이며, 이 경우에는 각 SQL 문이 실행될 때마다 자동으로 commit이 수행된다. 따라서, 여러 작업을 하나의 트랜잭션으로 묶어서 처리하고자 할 때는 setAutoCommit(false)로 설정한 후, 모든 작업을 마친 뒤에 commit() 메서드를 호출하여 변경 사항을 영구적으로 반영할 수 있다.
    
  예를 들어, 여러 개의 SQL 문이 하나의 트랜잭션으로 처리되어야 하는 경우 다음과 같은 방식으로 JDBC에서 트랜잭션을 처리할 수 있다.
    

```java
Connection con = null;
try {
    con = dataSource.getConnection();
    con.setAutoCommit(false); // AutoCommit 모드를 false로 설정

    // 여러 작업을 실행하는 SQL 문들 수행

    con.commit(); // 모든 작업이 성공적으로 수행되면 commit
} catch (SQLException e) {
    if (con != null) {
        con.rollback(); // 예외 발생 시 rollback하여 이전 상태로 복구
    }
    e.printStackTrace();
} finally {
    if (con != null) {
        try {
            con.setAutoCommit(true); // 다음에 사용할 때를 위해 AutoCommit 모드를 다시 true로 설정
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

```


<br>
**@EnableTransactionManagement**

---

- Spring Java Config 파일에서 트랜잭션을 활성화 할 때 사용하는 어노테이션이다.
- Spring에서는 이러한 트랜잭션 처리를 보다 간편하게 할 수 있도록 **`@EnableTransactionManagement`** 어노테이션을 사용하여 자바 Config 파일에서 트랜잭션 관리를 활성화할 수 있다.
- 이렇게 활성화된 상태에서 **`@Transactional`** 어노테이션을 사용하여 트랜잭션을 쉽게 적용할 수 있다. Spring은 이러한 어노테이션을 해석하여 적절한 시점에 트랜잭션을 시작하고 종료한다.
- Java Config를 사용하게 되면 PlatformTransactionManager 구현체를 모두 찾아서 그 중에 하나를 매핑해 사용한다. 특정 트랜잭션 메니저를 명시적으로 지정하고자 한다면 TransactionManagementConfigurer 인터페이스를 Java Config 파일에서 구현하고 원하는 트랜잭션 메니저를 리턴하도록 한다.


<br>
**서비스 객체에서 중복으로 호출되는 코드의 처리**

---

- 데이터 엑세스 메소드를 별도의 Repository(Dao) 객체에서 구현하도록 하고 Service는 Repository객체를 사용하도록 한다.


<br>
**레이어드 아키텍처**

![이미지](/assets/img/study/spring/%EB%A0%88%EC%9D%B4%EC%96%B4%EB%93%9C_%EC%95%84%ED%82%A4%ED%85%8D%EC%B2%98(Layered%20Architecture)%EB%9E%80%3F(2).png)


- Presentation Layer에서는 컨트롤러 객체가 동작한다. Service Layer에서는 비즈니스 메서드를 포함하는 서비스 객체가 동작하고, Repository Layer에서는 실제 데이터베이스에 접근하여 데이터를 가져오는 작업을 한다. 서비스 객체는 해당 Repository Layer에 있는 DAO 객체를 사용하게 된다.
- Presentation Layer가 변경되어도, Service와 DAO를 재사용하여 새로운 프로젝트를 개발할 수 있다.  예를 들어, 자바로 윈도우 프로그래밍을 한다면 Service 객체와 DAO 부분은 그대로 유지하고 Presentation Layer만 윈도우 프로그래밍으로 변경할 수 있다. 이러한 구조는 재사용성과 유지 보수성을 높일 수 있다.
- Presentation Layer와 이후의 Layer를 분리하여 설정 파일도 분리하는 것이 좋다. 각각의 설정을 따로 관리하면 필요할 때 쉽게 분리할 수 있다.


<br>
**설정의 분리**

---

- Spring 설정 파일을 프리젠테이션 레이어쪽과 나머지를 분리할 수 있다.
- web.xml 파일에서 프리젠테이션 레이어에 대한 스프링 설정은 DispathcerServlet이 읽도록 하고, 그 외의 설정은 ContextLoaderListener를 통해서 읽도록 한다.
- DispatcherServlet을 경우에 따라서 2개 이상 설정할 수 있는데 이 경우에는 각각의 DispathcerServlet의 ApplicationContext가 각각 독립적이기 때문에 각각의 설정 파일에서 생성한 빈을 서로 사용할 수 없다.
- 위의 경우와 같이 동시에 필요한 빈은 ContextLoaderListener를 사용함으로써 공통으로 사용하게 할 수 있다.
- ContextLoaderListener와 DispatcherServlet은 각각 ApplicationContext를 생성하는데, ContextLoaderListener가 생성하는 ApplicationContext가 root컨텍스트가 되고 DispatcherServlet이 생성한 인스턴스는 root컨텍스트를 부모로 하는 자식 컨텍스트가 된다. 참고로, 자식 컨텍스트들은 root컨텍스트의 설정 빈을 사용할 수 있다.

![alt text](/assets/img/study/spring/레이어드_아키텍처(Layered Architecture)란_(2).png)
