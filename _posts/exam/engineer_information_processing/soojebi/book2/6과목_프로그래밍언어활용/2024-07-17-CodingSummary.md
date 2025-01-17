---
categories: [Certificate, "[정보처리기사 Book2]",  6과목 코딩]
---


# 10. 프로그래밍 언어 활용
## 기본 문법 활용하기   
### 변수 활용
* 변수 : 어떤 값을 주기억 장치에 기억하기 위해서 사용하는 공간
* 식별자 : 프로그램의 구성요소를 구별하기 위한 기준 
* 바인딩 : 변수와 변수에 관련된 속성을 연결하는 과정 
* 선언 : 변수에 이름, 데이터 타입 등의 속성을 부여하는 작업 
* 영역 : 이름이 사용되는 범위를 의미
* 할당 : 변수에 메모리 공간을 바인딩하는 작업 
* 데이터 타입 : 변수가 가질 수 있는 속성 및 속성 값의 길이
* 연산자 : 데이터 처리를 위해 연산을 표현하는 기호
* 명령문 : 프로그램을 구성하는 문장으로, 지시 사항을 처리하는 단위 

#### 자료구조 개념 
컴퓨터에 데이터를 삽입, 삭제, 수정하게 해주는 논리적인 공간 구조

자료 구조 분류 
* 단순 구조 : 프로그래밍 언어에서 제공하는 기본 데이터 ex) int, float, double, char
* 선형 구조 : 데이터가 연속적으로 연결된 자료구조 ex) 연결 자료 구조, 순차 자료 구조, 스택, 큐, 덱 등
* 비 선형 구조 : 자료들 사이의 관계가 계층 또는 그물 형태 등 비 순차적인 성질을 가진 자료들을 표현하는데 적합한 구조 ex) 트리, 그래프
* 파일 구조 : 보조 기억 장치에 데이터값이 실제로 기록되는 자료구조 ex) 순차 파일, 색인 파일

#### 알고리즘 개념 
어떤 문제에 대한 답을 찾는 해법을 의미

알고리즘 특성 
* 입력
* 출력
* 명확성
* 유한성
* 유효성

#### 데이터 타입 
**데이터 타입의 개념**
프로그래밍 언어에서 실수치, 정수 자료형과 같은 여러 종류의 데이터를 식별하는 형태

**데이터 타입의 유형**
* 불린 타입 : 조건이 참인지 거짓인지 판단 
* 문자 타입 : 문자 하나를 저장 
* 문자열 타입 : 나열된 여러 개의 문자를 저장하고자 할 때 사용
* 정수 타입 : 정수 값을 저장하자 할 때 사용 
* 부동 소수점 타입 : 소수점 포함하는 실숫값을 저장하고자 할 때 사용
* 배열 타입 : 여러 데이터를 하나로 묶어서 저장하고자 할 때 사용

#### 변수
**변수의 개념**
저장하고자 하는 어떠한 값이 있을 때, 그 값을 주기억 장치에 기억하기 위한 공간을 의미 

**변수 설정 규칙**
* 사용 가능 문자 : 영어 대문자/소문자, 숫자, 밑줄('_')의 사용이 가능 
* 변수 사용 규칙 : 첫 자리에 숫자 사용 x, 변수 이름의 중간에는 공백 사용 x
* 변수 의미 부여 : 데이터 값의 의미나 역할을 표현. 예약어는 변수 사용 x 

### 연산자 
#### 산술 연산자 
* `+`
* `-`
* `*`
* `/`
* `%` : 나눈 나머지

#### 시프트 연산자 
비트를 이동시키는 연산자 
* `<<` : 왼쪽 값을 오른쪽 값만큼 비트를 왼쪽으로 이동하는 연산자
* `>>` : 왼쪽 값에 오른쪽 값만큼의 부호 비트를 채우면서 오른쪽으로 이동하는 연산자

#### 관계 연산자 
두 피연산자 사이의 크기를 비교하는 연산자
* `>`
* `<`
* `>=`
* `<=`
* `==`
* `!=` : 왼쪽에 있는 값이 오른쪽에 있는 값과 다르면 참을 반환하고, 그렇지 않으면 거짓을 반환. 

#### 논리 연산자
두 피연산자 사이의 논리적인 관계를 정의하는 연산자 
* && 
* ||

#### 비트 연산자 
0과 1의 각 자리에 대한 연산을 수행하며, 0 또는 1의 결과값을 갖는 연산자
* & : 두 값을 비트로 연산하여 모두 참이면 참을 반환, 그렇지 않으면 거짓을 반환 
* | : 두 값을 비트로 연산하여 하나가 참이면 참을 반환, 그렇지 않으면 거짓을 반환
* ^ : 두 값을 비트로 연산하여 서로 다르면 참을 반환, 그러히 않으면 거짓을 반환

#### 대입 연산자
변수에 값을 대입할 때 사용하는 연산자, 오른쪽에 있는 값을 이용해 왼쪽의 변수에 값을 대입
* `=`
* `+=`
* `-=`
* `*=`
* `/=`
* `%=`

#### 증감 연산자 
피연산자를 1씩 증가 혹은 1씩 감소시킬 때 사용하는 연산자
* `++`
* `--`
The image provides a table of various operators in C/C++ along with their precedence and associativity. Let me break it down for you:

![20240717_192320](https://github.com/user-attachments/assets/b5c27495-4847-477c-9497-5bb4228042e0)

### Categories of Operators:
1. **단항 연산자 (Unary Operators)**
2. **산술 연산자 (Arithmetic Operators)**
3. **시프트 연산자 (Shift Operators)**
4. **관계 연산자 (Relational Operators)**
5. **비트 연산자 (Bitwise Operators)**
6. **논리 연산자 (Logical Operators)**
7. **삼항 연산자 (Ternary Operator)**
8. **대입 연산자 (Assignment Operators)**
9. **순서 연산자 (Sequence Operators)**

### Precedence and Associativity:
The operators are listed in order of precedence from highest to lowest. Operators on the same row have the same precedence. The direction of the arrow (→ or ←) indicates the associativity of the operators.

#### 1. 단항 연산자 (Unary Operators)
   - `!` (logical not), `~` (bitwise not), `++` (increment), `--` (decrement), `sizeof` (size of)
   - **Associativity**: Right to Left (→)

#### 2. 산술 연산자 (Arithmetic Operators)
   - `*` (multiplication), `/` (division), `%` (modulus)
   - `+` (addition), `-` (subtraction)
   - **Associativity**: Left to Right (←)

#### 3. 시프트 연산자 (Shift Operators)
   - `<<` (left shift), `>>` (right shift)
   - **Associativity**: Left to Right (←)

#### 4. 관계 연산자 (Relational Operators)
   - `<` (less than), `<=` (less than or equal to), `>` (greater than), `>=` (greater than or equal to)
   - **Associativity**: Left to Right (←)

#### 5. 비트 연산자 (Bitwise Operators)
   - `&` (bitwise and)
   - `^` (bitwise xor)
   - `|` (bitwise or)
   - **Associativity**: Left to Right (←)

#### 6. 논리 연산자 (Logical Operators)
   - `&&` (logical and)
   - `||` (logical or)
   - **Associativity**: Left to Right (←)

#### 7. 삼항 연산자 (Ternary Operator)
   - `? :` (ternary conditional)
   - **Associativity**: Right to Left (→)

#### 8. 대입 연산자 (Assignment Operators)
   - `=`, `+=`, `-=`, `*=`, `/=`, `%=`, `<<=`, `>>=`, `&=`, `^=`, `|=`
   - **Associativity**: Right to Left (→)

#### 9. 순서 연산자 (Sequence Operators)
   - `,` (comma)
   - **Associativity**: Left to Right (←)

### Understanding Operator Precedence and Associativity:

- **Precedence** determines the order in which different operators in an expression are evaluated. For example, in the expression `a + b * c`, the multiplication operator (`*`) has higher precedence than the addition operator (`+`), so `b * c` is evaluated first.
- **Associativity** determines the order in which operators of the same precedence are evaluated. For example, in the expression `a - b - c`, both subtraction operators (`-`) have the same precedence, so associativity determines the order of evaluation. Since `-` is left-associative, `a - b` is evaluated first, followed by the result minus `c`.

### Example:

Given the operators and their precedence, let's evaluate an example:

```cpp
int a = 5, b = 10, c = 15, d;
d = a + b * c; // '*' has higher precedence than '+'
```
- Here, `b * c` is evaluated first (due to higher precedence), resulting in `150`.
- Then `a + 150` is evaluated, resulting in `155`.

For expressions involving multiple operators, understanding both precedence and associativity is crucial for determining the correct order of evaluation.

![20240717_191624](https://github.com/user-attachments/assets/06a6b44f-2948-4338-be92-66726040ef53)

Given the initial values `a = 1`, `b = 2`, `c = 3`, and `d = 4`, let's evaluate each expression step by step:

### Expression 1:
```cpp
b *= a > b ? a : b;
```

1. `a > b` evaluates to `1 > 2`, which is false.
2. Since the condition is false, `b` is used: `b *= b`.
3. `b = 2 * 2` equals 4.

Thus, the final value of `b` is 4.

### Expression 2:
```cpp
c -= a < b ? a - b : b - a;
```

1. `a < b` evaluates to `1 < 4`, which is true.
2. Since the condition is true, `a - b` is used: `c -= (1 - 4)`.
3. `c = 3 - (-3)` equals 6.

Thus, the final value of `c` is 6.

### Expression 3:
```cpp
d %= c < d ? c++ : d++;
```

1. `c < d` evaluates to `6 < 4`, which is false.
2. Since the condition is false, `d++` is used. This means the current value of `d` (which is 4) is used, and then `d` is incremented to 5.
3. `d %= 4` means `d = d % 4`, so `d = 4 % 4` equals 0.

Thus, the final value of `d` is 0.

### Expression 4:
```cpp
c += b < b ? ++a : b++;
```

1. `b < b` evaluates to `4 < 4`, which is false.
2. Since the condition is false, `b++` is used. This means the current value of `b` (which is 4) is used, and then `b` is incremented to 5.
3. `c += 4` means `c = c + 4`, so `c = 6 + 4` equals 10.

Thus, the final value of `c` is 10.

### Expression 5:
```cpp
d /= d % 3 ? a * b : d % c;
```

1. `d % 3` evaluates to `0 % 3`, which is 0 (false).
2. Since the condition is false, `d % c` is used. `d % c` evaluates to `0 % 10`, which is 0.
3. `d /= 0` is undefined (division by zero). 

Given the previous expressions, `d` would be 0 before this expression. Hence, the above code may raise an error or undefined behavior.

### Expression 6:
```cpp
a += ++a % b++ ? c * d : b / c;
```

1. `++a` pre-increments `a` from 1 to 2.
2. `b++` uses the current value of `b` (which is 5) and then increments `b` to 6.
3. `2 % 5` evaluates to 2 (true).
4. Since the condition is true, `c * d` is used. `c * d` evaluates to `10 * 0`, which is 0.
5. `a += 0` means `a = a + 0`, so `a = 2 + 0` equals 2.

Thus, the final value of `a` is 2.

Here is the summary of the final values of `a`, `b`, `c`, and `d`:
- `a = 2`
- `b = 6`
- `c = 10`
- `d = 0`

Note: For the fifth expression, division by zero might lead to an error or undefined behavior.

### 명령문
#### 조건문
**if문**
조건이 참인지 거짓인지에 따라 경로를 선택하는 명령문

**switch문**
조건에 따라 여러 개의 선택 경로 중 하나를 취하고자 할 때 사용하는 명령어

#### 반복문
**while문**
조건이 참인 동안에 해당 분기를 반복해서 시행하는 명령문

**for문**
초깃값, 최종값, 증감 값을 지정하여 반복하는 명령어

#### 루프 제어 명령어
**break문**
반복문이나 swithch문을 중간에 탈출하기 위해 사용하는 명령어

**continue문**
반복문에서 다음 반복으로 넘어갈 수 있도록 하는 명령어

### 사용자 정의 자료형 활용
#### 사용자 정의 자료형의 개념 
사용자가 상황에 맞게 기존 자료형들을 조합해서 만드는 자료형

**열거체**
* 서로 연관된 정수형 상수들의 집합
* 정수형 상수에 이름을 붙여서 코드를 이해하기 쉽게 해줌
* 멤버에 초깃값을 설정하지 않으면 0부터 자례대로 할당

```C
enum Week { 
    Sunday, // 0
    Monday, // 1
    Tuesday = 5, 
    Wednesday // 6
};

void main() { 
    enum Week week;
    week = Sunday; 
}
```
**구조체**
사용자가 기본 타입을 가지고 새롭게 정의할 수 있는 사용자 정의 자료형

**공용체**
모든 멤버 변수가 하나의 메모리 공간을 공유하는 사용자 정의 자료형

```C
union A {
    char c;
    int i;
}; // 총 4바이트

void main() { 
    union A a;
    a.c = 'M'; 
    a.i = 24;
}
```
구조체는 각 변수가 다른 메모리에 할당되어 있고, 공용체는 모든 변수가 같은 메모리에 할당. 

**사용자 정의 함수**
사용자가 직접 새로운 함수를 정의하여 사용하는 방법

### 추상화와 상속
#### 추상화
세부 사항은 배제하고 중요한 부분을 중심으로 간략화하는 깁버

추상화 종류 
* 기능 추상화 : 입력 자료를 출력 자료로 변환하는 과정을 추상화하는 방법
* 자료 추상화 : 자료와 자료에 적용할 수 있는 연산을 함께 정의 하는 방법 
* 제어 추상화 : 외부 이벤트에 대한 반응을 추상화하는 방법

#### 상속 
상위 수준의 그룹의 모든 특성을 하위 수준 그룹이 이어받아 재사용 또는 확장하는 기법

#### 구체화
하위 수준 그룹이 상위 수준 그룹의 추상적인 부분을 구체화하는 기법

## 언어 특성 활용하기
### 프로그래밍 언어의 언어별 특성
#### 프로그래밍 언어의 유형 분류
**개발 편의성에 따른 분류**
* 저급 언어 : 기계가 이해할 수 있도록 만들어진 언너 ex) 기계어, 어셈블리어
* 고급 언어 : 개발자가 소스 코드를 작성할 때 쉽게 이해할 수 있도록 작성된 언어 ex) C, C++, 자바, 파이썬

**실행하는 방식에 따른 분류**
* 명령형 언어 : 컴퓨터에 저장된 명령어들이 순차적으로 실행되는 프로그래밍 방식. 절차형 언어 ex) FORTRAN, COBOL, PASCAL, C
* 객체지향 언어 : 객체 간의 메시지 통신을 이용하여 프로그래밍 하는 방식 ex) JAVA, C++
* 함수형 언어 : 수학적 수식과 같은 함수들로 프로그램을 구성하여 호출하는 방식 ex) LISP
* 논리형 언어 : 논리 문장을 이용하여 프로그램을 표현하고 계산을 수행하는 개념에 기반한 프로그래밍 방식 ex) 프롤로그

**구현 기법에 따른 분류**
* 컴파일 방식의 언어 : 고급 언어를 기계어로 번역하는 방식의 언어 ex) FORTRAN, PASCAL, C, C++
* 인터프리터 방식의 언어 : 고급 언어 명령문을 하나씩 번역하고 실행하는 방식의 언어 ex) BASIC, 프롤로그, LISP
* 혼합형 방식의 언어 : 고급 언어를 컴파일하여 중간 언어로 변환한 후, 인터프리터에 의해 번역을 실행하는 방식의 언어 ex) 자바

#### 프로그래밍 언어별 특성 
**절차적 프로그래밍 언어 종류**
* 알골(ALGOL) : 알고리즘의 연구개발용. 최초 재귀 호출 가능. 
* C언어 : 유닉스 운영체제에서 사용. 모든 컴퓨터 시스템에서 사용. 
* 베이직 : 교육용 언어 
* 포트란 : 과학 기술 전문 언어. 수학 함수들 사용 가능 

**객체지향 프로그래밍 언어 종류**
* C++ : C + 객체지향 프로그래밍 + 템플릿 기능. 성능 하락이 없이 개발 가능. 
* C# : 불완전 코드와 같은 기술을 사용하여 플랫폼 간 상호 운용성 확보.
* 자바 : 웹 애플리케이션 개발에 가장 많이 사용. 자바 컴파일러는 자바 언어로 작성된 프로그램을 바이트 코드라는 특수한 바이너리 형태로 변환. 
* 델파이 : 파스칼 문법에 여러 기능 추가. 

**스크립트 언어 종류**
* PHP : 동적 웹 페이지를 만들기 위해 설계. 
* 펄 : 인터프리터 방식의 프로그래밍 언어. 강력한 문자열 처리 기능 제공 
* 파이썬 : 다양한 플랫폼에서 쓸 수 있고, 라이브러리 풍부. 
* 자바 스크립트 : 객체 기반의 스크립트 프로그래밍 언어. 웹 브라우저 내에서 주로 사용.

**선언형 언어 종류**
* 함수형 언어 : 하스켈(Haskell), 리스프(LISP)
* 논리형 언어 : 프롤로그(객체 간의 관계에 관한 문제를 해결, 인공지능, 계산 언어학, 자연언어 처리 분야)
* 특수 분야 언어 : SQL


#### 객체지향 프로그래밍 
* 객체와 객체 간의 통신을 통해 프로그램이 구현
* 객체, 속성, 메서드로 구성. 절차 지향에서 모듈은 객체, 변수는 속성, 함수는 메서드. 

**객체지향 프로그래밍의 구성요소**
* 객체 : 개체, 속성,메서드로 구성된 클래스의 인스턴스를 의미 
* 클래스 : 객체지향 프로그래밍에서 객체를 표현하는 추상 데이터 타입으로 객체를 생성하는 틀. 
* 메시지 : 객체 간의 통신

**객체의 구성요소**
* 개체 : 현실 세계에 보이는 본질 
* 속성 : 자료 저장소 역할
* 메서드 : 호출 단위를 의미

### 라이브러리 활용
#### 라이브러리
**라이브러리 개념**
* 호율적인 프로그램 개발을 위해 필요한 프로그램을 모아 놓은 집합체
* 필요할 때 찾아서 쓸 수 있도록 모듈화되어 제공되는 프로그램

**라이브러리의 구성**
* 도움말 
* 설치 파일
* 샘플 코드

**라이브러리의 종류**
* 표준 라이브러리
* 외부 라이브러리 


#### 모듈과 패키지
* 모듈 : 전역변수, 함수 등을 모아둔 파일 
* 패키지 : 모듈을 디렉터리 형식으로 구조화한 라이브러리


## java

```cplus
import java.util.Scanner;

class Main {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        System.out.print("Enter an integer: ");
        
        if (scan.hasNextInt()) {
            int a = scan.nextInt();
            System.out.printf("a*3 = %d\n", a * 3);
            System.out.println("a/2 = " + (a / 2));
            System.out.print("a-1 = " + (a - 1));
        } else {
            System.out.println("Error: Please enter a valid integer.");
        }
        
        scan.close();
    }
}
```


```cplus
#include <stdio.h>

int main() {
    int result, a = 400, b = 200, c = 300;
    result = a <b ? b++ : --c;
    printf("%d, %d , %d\n", result, b, c);
    return 0;
}
```

299 200 299
