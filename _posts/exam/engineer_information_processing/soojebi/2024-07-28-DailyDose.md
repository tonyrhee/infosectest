---
categories: [Certificate, "[정보처리기사]",  최종FINAL]
title: "<수제비 Daily 문제>"
---

11. 가상기억장치 구현기법
![image](https://github.com/user-attachments/assets/65545b4e-c01a-4671-b7a9-48091c6f1117)



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

​```

정답) (1) static

     (2) static
```
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
