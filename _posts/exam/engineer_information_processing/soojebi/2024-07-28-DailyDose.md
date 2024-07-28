---
categories: [Certificate, "[정보처리기사]",  최종FINAL]
title: "<수제비 Daily 문제>"
---

2. 다음은 C언어 코드이다. 실행결과를 쓰시오.

```cplus

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

```Cplus

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
