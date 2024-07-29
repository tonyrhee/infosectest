---
categories: [Certificate, "[정보처리기사]",  최종FINAL]
title: "<수제비 Daily 문제>"
---

28. 다음에서 설명하는 디자인 패턴은 무엇인지 쓰시오.
- 컬렉션 구현 방법을 노출시키지 않으면서도 그 집합체 안에 들어있는 모든 항목에 반복자를 사용하여 접근할 수 있는 디
자인 패턴이다.
- 내부구조를 노출하지 않고, 복잡 객체의 원소를 순차적으로 접근 가능하게 해주는 패턴이다.
- 서로 다른 집합 객체 구조에 대해 동일한 방법으로 순회할 수 있다.

정답) `Iterator 패턴`
해설) 2023 수제비 정보처리기사 실기책 1-31페이지


27. 다음에서 설명하는 테스트 기법을 쓰시오.
- 소프트웨어의 설계 한계를 넘어서는 부하를 준다.
- 임계점 이상에서 시스템의 장애 행동을 테스트 한다.
- 시스템이 최대 부하가 걸렸을 때만 보일 수 있는 결함을 체크할 수 있다.

정답)` 강도 테스트(Stress Testing)`
해설) 2023 수제비 정보처리기사 실기책 10-10페이지


26. 다음은 공개키 암호화에 대한 설명이다. 괄호( ) 안에 들어갈 암호화 알고리즘을 쓰시오.
- ( ① )은/는 1985년 코블리치와 밀러가 처음 제안한 알고리즘으로 유한체 위에서 정의된 타원곡선 군에서의 이산
대수의 문제에 기초한 공개키 암호화 알고리즘이다.
- ( ② )은/는 1976년에 고안한 최초의 공개키 알고리즘으로 유한 필드 내에서 이산대수 계산의 문제를 기본 원리로
하고 있으며 최초의 비밀키 교환 프로토콜로 사용되었다.

정답)
`① : ECC(Elliptic Curve Cryptography)`
`② : 디피-헬만(Diffie-Helllman)`
해설) 2023 수제비 정보처리기사 실기책 9-24페이지


25. 문제
서비스명, 제공 위치, 메시지 포맷, 프로토콜 정보 등 웹 서비스에 대한 상세 정보가 기술된 XML 형식으로 구현되어 있는 언어는 무엇인가?

​정답) `WSDL(Web Services Description Language)`

해설) 2023 수제비 정보처리기사 4-3, 4-12


24. 다음은 네트워크 공격에 대한 설명이다. 괄호( ) 안에 공격 기법을 쓰시오.
- ( ① ) 공격은 네트워크 계층에서 스니핑 시스템을 네트워크에 존재하는 또 다른 라우터라고 알림으로써 패킷의 흐
름을 바꾸는 공격이다.
- ( ② )공격은 침입자가 인증된 컴퓨팅 시스템인 것처럼 속여서 타깃 시스템의 정보를 빼내기 위해서 본인의 패킷 헤
더를 인증된 호스트의 IP 어드레스로 위조하여 타깃에 전송하는 공격기법이다.

정답)
`① : ICMP Redirect`
`② : IP 스푸핑(IP Spoofing)`
해설) 2023 수제비 정보처리기사 실기책 9-11페이지


23. 다음은 데이터베이스 모델에서 사용되는 키(key)에 대한 설명이다. 괄호( ) 안에 들어갈 키의 종류를 쓰시오.
- ( ① )은/는 후보 키 중에서 기본 키로 선택되지 않은 키이다.
- ( ② )은/는 릴레이션을 구성하는 모든 튜플에 대해 유일성은 만족하지만, 최소성은 만족하지 못하는 키이다.
- ( ③ )은/는 테이블 간의 참조 데이터 무결성을 위한 제약 조건으로 한 릴레이션의 컬럼이 다른 릴레이션의 기본 키로 이용
되는 키이다.

정답)
`① : 대체 키(Alternate Key)`
`② : 슈퍼 키(Super Key)`
`③ : 외래 키(Foreign Key)`
해설) 2023 수제비 정보처리기사 실기책 3-33페이지




22. 다음의 실행 결과는?

```java
import java.util.ArrayList; // Import ArrayList

interface Observer { // Declare Observer interface
    public void update(String msg);
}

class SooOb1 implements Observer { // Declare SooOb1 class
    public void update(String msg) { // Implement update method
        System.out.println("Soojebi Observer1: " + msg); // Print msg
    }
}

class SooOb2 implements Observer { // Declare SooOb2 class
    public void update(String msg) { // Implement update method
        System.out.println("Soojebi Observer2: " + msg); // Print msg
    }
}

interface Subject { // Declare Subject interface
    public void register(Observer o); // Observer registration method
    public void remove(Observer o); // Observer removal method
    public void notify(String msg); // Observer notification method
}

class SoojebiData implements Subject { // SoojebiData class
    private ArrayList<Observer> observers; // Declare observer list
    
    public SoojebiData() {
        observers = new ArrayList<Observer>(); // Create observer list
    }
    
    public void register(Observer o) { // Implement observer registration
        observers.add(o); // Add to list
    }
    
    public void remove(Observer o) { // Implement observer removal
        observers.remove(o); // Remove from list
    }
    
    public void notify(String msg) { // Implement observer notification
        for (Observer o : observers) { // Notify all observers with msg
            o.update(msg);
        }
    }
}

class Soojebi {
    public static void main(String[] args) {
        SoojebiData sd = new SoojebiData(); // Declare and create SoojebiData object
        Observer o1 = new SooOb1(); // Declare and create observer o1 object
        Observer o2 = new SooOb2(); // Declare and create observer o2 object
        sd.register(o1); // Register o1
        sd.register(o2); // Register o2
        sd.remove(o1); // Remove o1
        sd.notify("notify msg"); // Send msg to observers
        sd.remove(o2); // Remove o2
    }
}

```

정답)   `Soojebi Observer2:notify msg`
해설) 2023 수제비 정보처리기사 실기 Observer 패턴 예제 코드 입니다


21. 다음은 파이썬 프로그램이다. 프로그램 실행 결과를 쓰시오.

```python
d = {'학번':23, '학년':4}
d['학점'] = 3.0
del d['학년']
print(d)
```

정답) `{'학번': 23, '학점': 3.0}`

해설) 수제비 2023 정보처리기사 실기 6-166
괄호를 주의해서 답안을 작성 합니다 


20. 다음은 자바 프로그램이다. 프로그램 실행 결과를 쓰시오.

```java
public class soojebi{
public static void main(String[] args) {
  String str = "손흥민,이강인,김민재";
  String[] arr = str.split(","); //split 함수를 콤마 기준으로 arr[0]에는 손흥민, arr[1]에는 이강
  for(String s : arr){ // arr을 s에 순차적으로 대입
  System.out.print(s); // s 출력
    }
  }
}
```
정답) `손흥민이강인김민재`
해설) split 함수를 콤마 기준으로 arr[0]에는 손흥민, arr[1]에는 이강인, arr[2]에는 김민재로 분리한다.
for문에서 arr배열에서 순차적으로 반복하여 s에 대입하고 s를 출력 한다.
6-156 페이지의 split을 자바 코드로 출제 하였습니다
참고해 주세요



19. 다음은 요구사항 확인 및 검증 단계의 주요 기법에 대한 설명이다. 괄호( ) 안에 들어갈 용어를 쓰시오.
- ( ① )은/는 2~3명이 진행하는 리뷰의 형태로 요구사항 명세서 작성자가 요구사항 명세서를 설명하고 이해관계자들
이 설명을 들으면서 결함을 발견하는 형태로 진행하는 검토 방법이다.
- ( ② )은/는 소프트웨어 요구, 설계, 원시 코드 등의 저작자 외의 다른 전문가 또는 팀이 검사하여 오류를 찾아내는 공
식적인 검토 방법이다.

정답)
`① : 동료 검토(Peer Review)`
`② : 인스펙션(Inspection)`
해설) 2023 수제비 정보처리기사 실기책 1-50페이지

18. 상속


```c
class T_Soojebi _____(1)_____ Thread{
  public void run(){
    System.out.println("Run");
  }
}
public class Soojebi{
  public static void main(String[] args){
    Thread t1 = new T_Soojebi( );
    Thread t2 = _____(2)______ Thread(new T_Soojebi( ));
    t1.start();
    t2.start();
    System.out.println("Main");
  }
}
```

정답) `(1) extends`
      `  (2) new`

해설) 수제비 2023 정보처리기사 실기 6-120


17. 다음은 C언어 프로그램이다. 실행 결과를 쓰시오.

```C
#include <stdio.h>
#include <math.h>   // 수학함수 사용하기 위한 헤더파일 포함시킴

int main( ){
  double a = 1.1;        // double 형 변수 a에 1.1을 대입
  printf("%.2f", ceil(a));  // 올림 함수 호출 후 출력
  return 0;
}
```

`정답) 2.00`

해설) 2023 수제비 정보처리기사 실기 6-57 ~ 59


16. 다음은 소프트웨어 관련 신기술 용어이다. 괄호( ) 안에 들어갈 용어를 보기에서 골라서 쓰시오.
- ( ① )은/는 컴퓨터가 데이터를 통해 스스로 학습하여 예측이나 판단을 제공하는 기술이다.
- ( ② )은/는 인간의 지적 능력을 컴퓨터를 통해 구현하는 기술이다.
- ( ③ )은/는 인공 신경망을 활용하는 개념으로, 여러 계층의 신경망을 구성해 학습을 효과적으로 수행하는 기술이
다.

[보기]
인공지능(AI; Artificial Intelligence), 머신러닝(Machine Learning), 딥러닝(Deep Learning)

정답)
`① : 머신러닝(Machine Learning)`
`② : 인공지능(AI; Artificial Intelligence)`
`③ : 딥러닝(Deep Learning)`
해설) 2023 수제비 정보처리기사 실기책 11-72페이지


15. 다음 도서 테이블에 대한 SQL문을 수행하였을 때, 결과 테이블의 튜플 수를 쓰시오.
[도서] 테이블
```
도서 도서명       저자명 출판사
번호
1   컴퓨터 기초   홍길동 Blue
2   컴퓨터 심화   장길산 White
3   컴퓨터 심화   홍길동 White
4   인공지능 기초 홍길동 White
5   인공지능 심화 박문수 Green
6   인공지능 심화 박문수 Green
7   네트워크 기초 홍길동 Green
8   네트워크 기초 김길동 White
9   네트워크 심화 임꺽정 Blue
10   네트워크 심화 김길동 Red
```

[SQL문]
```sql
SELECT DISTINCT 출판사
FROM 도서
WHERE 저자명 = ‘홍길동’;
```

`정답) 3`
해설) 2023 수제비 정보처리기사 실기책 7-16페이지


14. 다음 SQL문을 통해 생성된 학생 테이블에 새로운 속성으로 ‘나이’를 추가하고자 한다. 밑줄 친 곳을 채워 알
맞은 쿼리를 작성하시오. (단, ‘나이’의 데이터 타입은 CHAR(3)이다.)

```sql
CREATE TABLE 학생 (
학번 CHAR(10) PRIMARY KEY,
이름 CHAR(20),
주소 CHAR(50),
전화번호 CHAR(13) );
[쿼리문]
( ① ) TABLE 학생 ( ② ) 나이 CHAR(3);
```

정답)
`① : ALTER`
`② : ADD`
해설) 2023 수제비 정보처리기사 실기책 7-13페이지


13. 다음에서 설명하는 데이터베이스 무결성 제약조건(Integrity Constraint)은 무엇인가?

|   |
|  -- |
| - 기본키 제약(primary key constraint)이라고도 한다. |
| - 기본키는 널(NULL) 값을 가져서는 안되며 릴레이션 내에 오직 하나의 값만 존재해야 한다.|

`정답) 개체 무결성(Entity Integrity)`
해설) 2023 수제비 정보처리기사 실기책 3-30페이지


12. 다음에서 설명하는 네트워크 기술은 무엇인가?

|   |
|  --  |
| - 트래픽의 경로를 지정하는 제어 평면과 트래픽 전송을 수행하는 데이터 평면을 분리하여, |
|  OpenFlow 프로토콜 등을 통해 네트워크를 프로그램할 수 있다. |


​`정​​답) SDN(Software Defined Networking)`

해설) ​2023 수제비 정보처리기사 실기책 11-75페이지


11. (가상기억장치 구현기법) 다음은 메모리 할당 기법 중 분산 할당 기법에 대한 설명이다. 괄호 ( ) 안에 들어갈 용어를 쓰시오.


|   |
|  --  |
| - ( ① )은/는 가상기억장치 내의 프로세스를 일정하게 분할하여 주기억장치의 분산된 공간에 적재시킨 후 프로세스
를 수행시키는 기법이다. <br> - ( ② )은/는 가상기억장치 내의 프로세스를 가변적인 크기의 블록으로 나누고 메모리를 할당하는 기법이다. |

정답)
`① : 페이징 기법(Paging)`
`② : 세그먼테이션 기법(Segmentation)`
해설) 2023 수제비 정보처리기사 실기책 11-12페이지


10. 다음은 파이썬 프로그램이다. 실행 결과를 쓰시오.

```python
result = list(filter((lambda x:x%2 == 1), range(5)))
print(result)
```

`정답)  [1, 3]`

해설) 수제비 정보처리기사 실기 6-180 ~ 183

9. 다음은 C언어 프로그램이다. 빈칸에 공통으로 들어갈 키워드를 쓰시오.

```c
#include <stdio.h>
#include <stdlib.h>

struct NODE {       // 구조체 NODE 선언
    int data;         // NODE에 저장할 data
    struct NODE *pNext;  // NODE 다음 주소를 저장할 포인터 변수
};

struct NODE *pHead;    // 구조체 NODE 포인터변수 pHead를 전역변수로 선언, 리스트의 시작 주소값 저장

void push(int data){
    struct NODE *pEnd = malloc(sizeof(struct NODE));  // 메모리를 할당(memory allocation)
    pEnd->( _______ ) = pHead->( _______ );     // 리스트에 노드 추가
    pEnd->data = data;    // 매개변수로 전달받은 data를 리스트에 대입
    pHead->( _______ ) = pEnd;  // pEnd 값을 pHead의 pNext에 대입
}

int pop(){
    int ret;   // 리턴할 값을 저장할 변수
    struct NODE *pDel = pHead->( _______ );   // 리턴할 노드의 주소를 가리킨 변수 pDel에 pHead->pNext를 대입
    pHead->( _______ ) = pDel->( _______ );    // pDel->pNext를 pHead의 pNext에 대입
    ret = pDel->data;   // pDel의 데이터를 ret에 대입
    free(pDel);   // pDel 의 메모리를 해제
    return ret;   //ret 값을 리턴함
}

int main() {
    int r;
    pHead = malloc(sizeof(struct NODE));   // pHead 변수로 메모리 할당 받음
    pHead->pNext = NULL;   // pHead->pNext에는 NULL을 대입
    
    push(10);   // 리스트에 10 을 push
    push(20);  // 리스트에 20 을 push
    push(30);  // 리스트에 30 을 push
    
    r = pop();        // 리스트에서 하나 꺼내어 r에 대입
    printf("%d", r);  // r을 화면에 출력
    r = pop();        // 리스트에서 하나 꺼내어 r에 대입
    printf("%d", r);  // r을 화면에 출력
    r = pop();       // 리스트에서 하나 꺼내어 r에 대입
    printf("%d", r);  // r을 화면에 출력

    return 0;  // 0을 리턴하고 프로그램 종료
}
```


출력결과

302010
`정답) pNext`

해설) 수제비 정보처리기사 실기 6-63 포인터, 6-70 구조체, 6-124 LinkedList, Stack 참조


8. 다음은 자바 코드이다. 프로그램 출력 결과를 쓰시오.

```java
abstract class Soojebi{
  abstract String getName();
}

class Soojebi1 extends Soojebi{
  String getName(){  
    return "soojebi1";
  }
}

class Soojebi2 extends Soojebi{
  String getName(){
    return "soojebi2";
  }
}

abstract class SuperSoojebiFactory{
  abstract Soojebi createSoojebi(String name);
}

class SoojebiFactory extends SuperSoojebiFactory {    // SoojebiFactory 클래스 선언
  Soojebi createSoojebi(String name){    //name으로 전달받은 객체 생성
    switch(name){   //name이 
      case "soojebi1":    // soojebi1 이면
        return new Soojebi1();    // Soojebi1() 생성자 호출하고 리턴
      case "soojebi2":   // soojebi2 이면
        return new Soojebi2();   // Soojebi2() 생성자 호출하고 리턴   
    }
    return null;   // null을 리턴
  }
}

class SoojebiMain{
  public static void main(String[] args){
    SoojebiFactory sf = new SoojebiFactory();   // SoojebiFactory 메서드로 sf 객체 생성
    Soojebi s1 = sf.createSoojebi("soojebi1");    // soojebi 클래스의 s1 객체 생성
    Soojebi s2 = sf.createSoojebi("soojebi2");    // soojebi 클래스의 s2 객체 생성
    System.out.println(s1.getName() + s2.getName());   // s1.getName 함수 호출 결과와 s2.getName 함수 호출 결과를 출력
  }
}
```

`정답) soojebi1soojebi2`

해설) 수제비 정보처리기사 실기 6-110(상속), 6-117(abstract)


7. 다음은 C언어 코드이다. 프로그램 출력 결과를 쓰시오.


```c
#include <stdio.h>

int main() {    
    int num=20;
	int i=0;
	int k=0;
	
    // 20의 약수를 계산
	for(i=1;i<num;i++){     
	    if ( num % i == 0 ) {		    // num을 i로 나눈 나머지가 0 이면
		    k += i;                       // i와 k를 더한값을 k에 대입
	    }
	}
	
    //3의 배수를 계산	
	for(i=1;i<num;i++){          
	    if ( i % 3 == 0 ) {		    //i를 3으로 나눈 나머지가 0이면 
		    k += i;                    //  i와 k를 더한값을 k에 대입
	    }
	}
	
	printf("%d", k);       //k를 출력

    return 0;
}
```

`답) 85`

​
> 해설) 6-22 나머지 연산자 참조

​나머지 연산자는 다양하게 응용되어 사용 됩니다

약수, 배수 계산 하는 방법 익혀 두세요 i가 num의 약수인 경우 i = 1, 2, 4, 5, 10

i가 3의 배수인 경우  i = 3, 6, 9, 12, 15, 18  모두 더하면 85

`23년 2회차에는 동전 갯수 구하는데 사용 되었어요`



6. 다음은 JAVA 코드이다. 프로그램 출력 결과를 쓰시오.

```java
public class Soojebi{
  public static void main(String[] args){
    int i = 3;
    int k = 1;
    
    k = i++;
    
    System.out.print(i+k);        
    
    switch(i){
      case 0:
        System.out.print('0');  
      case 1:
        System.out.print('1');  
      case 2:
        System.out.print('2');  
      case '3': 
        k=0;
        System.out.print('3');
        break; 
      case '4': 
        k+=3;
        System.out.print('4');
        break;
      case 5: 
        k-=10;
        System.out.print('5');
        break;
      default:
        k--;
        System.out.print('d');
    }
    System.out.print(k);
  }
}
```

`정답) 7d2`

​해설) ​2023 수제비 정보처리기사 6-32  [딧글](https://cafe.naver.com/soojebi/175704)



5. 다음은 JAVA 코드이다. 빈칸에 들어갈 코드를 작성하시오

```java
class Soojebi {                       // Soojebi 클래스 선언
  (    (1)    ) void print(){         // static 메서드 선언
    System.out.println("soojebi class");   // soojebi class 출력
  }
}

public class SoojebiMain {        // SoojebiMain 클래스 선언
  public (    (2)    ) void main(String[] args){   // 메인 메서드 선언
    Soojebi.print();    // 인스턴스를 생성하지 않고 '클래스명.메서드명' 형태로 호출
  }
}

```

출력결과) `soojebi class`


정답) `(1) static`

     `(2) static`
​​

해설) 2023 수제비 정보처리기사 실기 6-105 페이지

static 쓰실때, 소문자로 작성해 주세요! 


4. 다음은 C언어 코드이다. 실행결과를 쓰시오.


```c
#include <stdio.h>
#include <string.h>

int soojebi(char *p, int size){   // soojebi 함수
  int i;
    
  if( p == NULL || size < 0 ){   // 파라미터 예외처리
    return -1;
  }
  
  for(i=0;i<size;i++){      // 파라미터 전달받은 사이즈만큼 반복 수행
    if( i%4 == 0) printf("%c", *p );     // i를 4로 나눈 나머지가 0이면 *p를 출력
  }
  
  return 1;   // 1을 리턴
}

int main(){
  char *pStr = "hello soojebi";   // 문자열 hello soojebi 선언
  int ret;  // 함수 결과를 저장할 변수 선언
  
  ret = soojebi(pStr, strlen(pStr));  // soojebi 함수 호출
  if(ret < 0){   // 호출 결과가 0보다 작으면
      printf("error in soojebi function");  // 에러 출력
      return -1;  // -1로 프로그램 종료
  }
  
  return 0;   // 0으로 프로그램 종료
}
```

```php
```

`정답) hhhh`
​​
해설) "hello soojebi" 문자열을 soojebi 함수로 전달하고 
전달받은 문자열에서 i가 4로 나눈 나머지가 0일때마다 *p를 출력한다.


3. 오류 제어 방식의 종류 중 BEC 방식의 유형에 대한 설명이다. 괄호 (      ) 안에 들어갈 용어를 쓰시오.

- (      ①     )은/는 프레임의 모든 문자로부터 계산되는 잉여 패리티 비트들을 사용하는 이차원(가로/세로) 패리티 검사 방식이다.
​
- (      ②     )은/는 데이터 내 첨부된 오류검출(체크섬 등) 정보로 에러 발생 유무를 점검하고, 에러가 발생한 프레임에 대해 재전송을 요구하는 방식이다.

​
정​​답)
​
`① : 블록합 검사(Block Sum Check)`
​
`② : 자동 재전송 요구(ARQ; Automatic Repeat Request)`


2. 다음은 C언어 코드이다. 실행결과를 쓰시오.

```c

#include <stdio.h>
void main(){
    char arr[32]="What's your ETA?";    // arr을 "What's your ETA?" 대입
    int i;
 
    for(i=0;arr[i]; i++){
        if((arr[i]>='a') && (arr[i]<='z')){    // 소문자이면
            arr[i] = arr[i]-'a'+'A';             // 대문자로 변경
        }
    }
    
    printf("%s\n",arr);  // arr 출력
}

```

`정답) WHAT'S YOUR ETA?`

해설) 소문자를 대문자로 변환한다. 


1. 다음은 C언어 코드이다. soojebi 라는 문자열을 입력하였다. 실행결과를 쓰시오.

```c

#include <stdio.h>

int main() {        
  char arr[30];

  gets(arr);
  printf("puts>");
  puts(arr);

  return 0;
}
```

```python
정답) puts>soojebi
```
---

​<br>
해설) 정처기 실기 23년 2회차에 gets() 가 출력 되었습니다. gets() 관련 함수를 확인해 주세요
gets() 함수, puts() 함수, getchar() 함수, putchar() 함수는 정처기 뿐만 아니라 산기시험에도 출제되고 있습니다

|    |    |
| -- | -- |
| 함수명 | 내용 |
| gets() | 문자열을 키보드로 부터 입력 받는 함수 |
| puts() | 문자열을 화면에 출력하는 함수 |
| getchar() | 문자를 키보드로부터 입력 받는 함수 |
| putchar() | 문자를 화면에 출력하는 함수 |
