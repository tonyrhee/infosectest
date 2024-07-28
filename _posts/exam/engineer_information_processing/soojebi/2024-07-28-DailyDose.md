---
categories: [Certificate, "[정보처리기사]",  최종FINAL]
title: "<수제비 Daily 문제>"
---

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
