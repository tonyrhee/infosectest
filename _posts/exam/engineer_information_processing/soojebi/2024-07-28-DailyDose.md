---
categories: [Certificate, "[정보처리기사]",  최종FINAL]
title: "<수제비 Daily 문제>"
---


### Python
The code you provided contains some syntax issues. It looks like Python code, but there are errors with the semicolons and indentation that need to be corrected.

Here's the corrected Python code:

```python
a = 0
sum = 0

while a < 10:
    a += 1
    if a % 2 == 1:
        continue
    sum += a

print(sum)
```

#### Explanation:

1. **Initialization**:
   - `a = 0`: This initializes `a` to 0.
   - `sum = 0`: This initializes `sum` to 0.

2. **Loop**:
   - `while a < 10:`: The loop runs as long as `a` is less than 10.
   - `a += 1`: Increment `a` by 1 on each iteration.

3. **Condition**:
   - `if a % 2 == 1:`: Checks if `a` is an odd number (`a % 2 == 1` means that the remainder when `a` is divided by 2 is 1, which indicates an odd number).
   - `continue`: If `a` is odd, the `continue` statement skips the rest of the loop and moves to the next iteration.

4. **Sum**:
   - `sum += a`: If `a` is even (not odd), add `a` to `sum`.

5. **Output**:
   - `print(sum)`: After the loop ends, print the value of `sum`.

#### What the Code Does:
The code sums all even numbers from 1 to 10.

#### Detailed Walkthrough:
- `a = 0`, `sum = 0`
- `a = 1`: It's odd, so `continue` is called, and `sum` remains `0`.
- `a = 2`: It's even, so `sum = sum + 2` => `sum = 2`.
- `a = 3`: It's odd, so `continue` is called, and `sum` remains `2`.
- `a = 4`: It's even, so `sum = sum + 4` => `sum = 6`.
- `a = 5`: It's odd, so `continue` is called, and `sum` remains `6`.
- `a = 6`: It's even, so `sum = sum + 6` => `sum = 12`.
- `a = 7`: It's odd, so `continue` is called, and `sum` remains `12`.
- `a = 8`: It's even, so `sum = sum + 8` => `sum = 20`.
- `a = 9`: It's odd, so `continue` is called, and `sum` remains `20`.
- `a = 10`: It's even, so `sum = sum + 10` => `sum = 30`.

#### Final Output:
The code will print:

```
30
```

So the sum of the even numbers from 1 to 10 is 30.
### Java


```java
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

```java
abstract class Animal {
  String = " is animal.";
  abstract void look();
  void show() {
    System.out.printIn("Zoo");
  }
}
class Chicken extends Animal {
  Chicken() {
    look();
  }
  void look(){
    System.out.printIn("Chicken" + a);
  }
  void display() {
    System.out.printIn("two wings.");
  }
}
public static void main(String[] args) {
  Animal a = new  Chicken();
  a. show();
}

```

```java
class Parent {
  void show() { System.out.printIn("parent");}
}
class Child extends Parent {
  void show() {System.out.printIn("Child");}
}
public class Test {
  public static void main(String[] args) {
    Parent pa = new Child();
    pa.show();
  }
}
```


```java
abstract class Vehicle {
  String name;
  abstract public String getName(string val);
  public String getName() {
    return "Vehicle name :  " + name;
  }
}

class Car extends Vehicle {
  private String name;
  public Car(String val) {
    name = super.name = val;
  }
  public String getName(byte[] val) {
    return "car name : " + val;
  }
}

public class Test {
  public static void main(String[] args) {
    Vehicle obj = new Car("Spark");
    System.out.print(obj.getName());
  }
}
```

```java
class Parent {
  int compute(int num) {
    if(num <=1) return num;
    return compute(num -1) + compute(num -2);
  }
}
class Child extends Parent {
  int compute(int num) {
    if(num <= 1) return num;
    return compute(num - 1) + compute(num -3);
  }
}

public class Test {
  public static void main(String[] args) {
    Parent obj = new Child();
    System.out.print(obj.compute(4));
  }
}

```

> exception

```java
import java.util.*;
import java.lang.*;
import java.io.*;

public class Main {  // Change Test to Main
    public static void main(String args[]) {
        int c = 23, div = 6, result = 0;
        try {
            while (div > -1) {
                div--;
                if (div == 0) {  // Prevent division by zero
                    throw new ArithmeticException();
                }
                if (c / div > 10) {
                    result = div;
                }
                System.out.println(result);  // Corrected method name
            }
        } catch (ArithmeticException e) {
            System.out.println("err01");  // Corrected method name
            result = -1;
        } catch (IllegalArgumentException e) {
            System.out.println("err02");  // Corrected method name
            result = 1;  // Changed from '01' to '1'
        } catch (NullPointerException e) {
            System.out.println("err03");  // Corrected method name
            result = -1;
        } finally {
            if (result == 1)  {
                System.out.println(" is occurred");  // Corrected method name
            }
        }
    }
}
```

```
0
0
0
2
1
err01 is occurred
```

문제 10 (예상문제) 264페이지

**관계연산자 비트와이즈**

```java
import java.util.*;
import java.lang.*;
import java.io.*;

public class Main {
    public static void main(String args[]) {
        byte a = 15, b = 19;

        // Bitwise NOT
        System.out.printf("%d\n", ~a);

        // Bitwise XOR
        System.out.printf("%d\n", a ^ b);

        // Bitwise AND
        System.out.printf("%d\n", a & b);

        // Bitwise OR
        System.out.printf("%d\n", a | b);
    }
}

```

```
-16
28
3
31
```

The provided code demonstrates the use of different numeric literals in Java: **octal**, **hexadecimal**, and **decimal**. Let's break down what each literal means and the output of the program.

### Numeric Literals in Java:
1. **Octal Literal** (`035`):
   - In Java, a number that starts with a `0` is interpreted as an octal (base 8) number.
   - The digits allowed in an octal number are `0` to `7`.
   - In this case, `035` in octal corresponds to the decimal value:
     ```
     3 * 8^1 + 5 * 8^0 = 3 * 8 + 5 * 1 = 24 + 5 = 29
     ```

2. **Hexadecimal Literal** (`0x35`):
   - A number that starts with `0x` (or `0X`) is interpreted as a hexadecimal (base 16) number.
   - The digits allowed in a hexadecimal number are `0` to `9` and `A` to `F` (where `A`=10, `B`=11, ..., `F`=15).
   - In this case, `0x35` in hexadecimal corresponds to the decimal value:
     ```
     3 * 16^1 + 5 * 16^0 = 3 * 16 + 5 * 1 = 48 + 5 = 53
     ```

3. **Decimal Literal** (`35`):
   - A regular number without any prefix is interpreted as a decimal (base 10) number.
   - In this case, `35` remains `35` in decimal.

### Code Analysis:

```java
public class Main {
    public static void main(String[] args) {
        int a = 035;   // Octal literal
        int b = 0x35;  // Hexadecimal literal
        int c = 35;    // Decimal literal

        System.out.printf("%d\n", a);  // Prints the decimal equivalent of the octal number
        System.out.printf("%d\n", b);  // Prints the decimal equivalent of the hexadecimal number
        System.out.printf("%d\n", c);  // Prints the decimal number
    }
}
```

### Expected Output:

- `a = 035` is an octal number, which equals `29` in decimal.
- `b = 0x35` is a hexadecimal number, which equals `53` in decimal.
- `c = 35` is a decimal number, which equals `35` in decimal.

So the program will output:

```
29
53
35
```

### Summary:
- **Octal numbers** are represented with a leading `0`.
- **Hexadecimal numbers** are represented with a leading `0x`.
- **Decimal numbers** are represented as they are.

In your code, `035` (octal) equals `29` in decimal, `0x35` (hexadecimal) equals `53` in decimal, and `35` (decimal) is `35`.

### C
```c
#include <stdio.h>
#include <string.h>

main()
{
  int k,n;
  char st[] = "I am Tom!";
  char temp;
  n = strlen(st);
  n--;
  for (k =0; k < n; k++);
  {
    temp = *(st + k);
    *(st + k) = *(st + n);
    *(st + n) = temp;
    n--
  }
}
```
```c
#include <stdio.h>
#include <string.h>

int main() {
    int k, n;
    char st[] = "I am Tom!";
    char temp;
    
    n = strlen(st) - 1;  // Subtract 1 to avoid the null character

    for (k = 0; k < n; k++, n--) {
        temp = st[k];
        st[k] = st[n];
        st[n] = temp;
    }

    printf("Reversed string: %s\n", st);

    return 0;
}

```

```c
#include <stdio.h>
void align(int a[]) {
  int temp;
  for (int i = 0; i < 4; i++)
    for (int j = 0; j < 4 - i; j++)
      if (a[j] > a[j+1]) {
        temp = a[j];
        a[j] = a[j + 1];
        a[j + 1] = temp;
      } 
}
main() {
  int a[] = {85, 75, 50, 100, 95};
  align(a);
  for (int i = 0; i < 5; i++)
    printf("%d ", a[i]);
}

```

50 75 85 95 100

```c
#include <stdio.h>
int r1() {
  return 4;
}
int r10() {
  return (30 + r1());
}
int 4100() {
  return (200 + r10());
}
int main() {
  printf("%d\n", r100());
  return 0;
}
```
234


input = 12, 6
```c
#include <stdio.h>
int sub(int i, int j) {
  return i = j;
}

int add(int i, int j) {
  return i + j;
}
main() {
  int i, j, result;
  int (*pf) (int, int);
  scanf("%d, %d", &i, &j);

  pf = (); // 1
  () = pf(i, j); // 2
  printf("%d, ", result);

  () = sub; // 3
  result = (); // 4
  printf("%d", result);
}

```
add result pf pf[i, j]

Fibonacci
```c
#include <stdio.h>
int Fibonacci(int n) {
  if (n == 0)
    return 0;
  else if (n == 1)
    return ;// 1
  else 
    return Fibonacci(?) + Finbonacci(n-1); // 2
}

int main(void) {
  int i = 0;
  for(i = 0; i < 10; i++)
    printf("%d ", Finbonacci(i));
  return 0;
}
```
1 n - 1

```c
#include <stdio.h>
func(int *p) {
  printf("%d\n", *p);
  printf("%d\n", p[2]);
}

main() {
  int a[7] = {1, 2, 3, 4, 5};
  func(a);
  func(a + 2);
}

``` 
1 3 3 5

```c
#include <stdio.h>

int main() {
    int result, a = 400, b = 200, c = 300;
    result = a <b ? b++ : --c;
    printf("%d, %d , %d\n", result, b, c);
    return 0;
}
```

299 200 299

48. java usage

```java
abstract class Vehicle { // Define an abstract class Vehicle
    String name; // Declare a string variable to store the name of the vehicle

    abstract void display(); // Declare an abstract method to display information about the vehicle

    void show() { // Define a method to display a generic message
        System.out.println("Zoo");
    }
}

class Car extends Vehicle { // Define a subclass Car that extends the Vehicle class
    Car(String name) { // Constructor to initialize the name of the car
        this.name = name;
        display(); // Call the display method
    }

    void display() { // Implement the display method from the abstract class
        System.out.println("Vehicle name: " + name);
    }

    void drive() { // Define a method specific to the Car class
        System.out.println("Driving the car");
    }
}

public class Test { // Main class
    public static void main(String[] args) {
        Vehicle v = new Car("Spark"); // Create a new Car object with name "Spark" and assign it to a Vehicle reference
        v.show(); // Call the show method from the Vehicle class
        // v.drive(); // Uncomment this line if you want to call the drive method, but it will result in a compilation error
    }
}
```

47. java usage

```java
abstract class Animal {
    String a = " is animal";
    abstract void look();
    void show() {
        System.out.println("Zoo");
    }
}

class Chicken extends Animal {
    Chicken() {
        look();
    }
    void look() {
        System.out.println("Chicken" + a);
    }
    void display() {
        System.out.println("two wings");
    }
}
public class Test {
    public static void main(String[] args) {
        Animal a = new Chicken();
        a.show();
    }
}
```

46. java output

```java
class Static {
    public int a = 20; // instance variable
    public int b = 0; // instance variable

}
public class Test {
    public static void main(String[] args) {
        Static obj1 = new Static();
        Static obj2 = new Static();
        obj1.a = 50;
        obj1.b = 100;
        obj2.a = 10;
        obj2.b = 20;
        System.out.println(obj1.a + " " + obj1.b);
        System.out.println(obj2.a + " " + obj2.b);
    }
}
```


45. Java Class

```java
class ClassA {
    int a = 1-;
    int funcAdd(int x, int y) {
        return x + y + a;
    }
}
public class Test {
    public static void main(String[] args) throws Exception {
        ClassA obj = new ClassA();
        System.out.println(obj.funcAdd(1, 2));
        int x = 3, y = 6, r;
        r = cal.funcAdd(x, y);
        System.out.print(r);
    }
}
```

```
The provided Java code consists of two classes: ClassA and Test. The ClassA class defines an integer instance variable a and a method funcAdd. The Test class contains the main method, which serves as the entry point for the program.

In ClassA, the instance variable a is initialized with the expression 1-, which appears to be a syntax error. The correct initialization should be a valid integer expression, such as int a = 1;. The funcAdd method in ClassA takes two integer parameters, x and y, and returns the sum of x, y, and the instance variable a.

The Test class's main method begins by creating two instances of ClassA, named obj and cal. It then calls the funcAdd method on the obj instance with the arguments 1 and 2, and prints the result to the console. Next, it declares three integer variables, x, y, and r, initializing x to 3 and y to 6. The variable r is assigned the result of calling the funcAdd method on the cal instance with x and y as arguments. Finally, the value of r is printed to the console.

The code demonstrates basic object-oriented principles in Java, such as class definition, instance variable usage, method definition, and object instantiation. However, the syntax error in the initialization of a needs to be corrected for the code to compile and run successfully. Once corrected, the program will output the results of the funcAdd method calls, showing the sum of the provided arguments and the instance variable a.
```


44. factorial

The provided C program calculates the factorial of a given integer input using a recursive function. Let's go through the code step-by-step:

[322-recursive](http://gilbut.co/c/23050276Up)

### Code Breakdown

```c
#include <stdio.h>

int func(int a) {
    if (a <= 1) return 1;
    return a * func(a - 1);
}

int main() {
    int a;
    scanf("%d", &a);
    printf("%d", func(a));
}
```

1. **Function `func(int a)`**:
   - This is a recursive function that calculates the factorial of a given integer `a`.
   - The base case is `if (a <= 1)`, which returns 1. This handles both 0! (factorial of 0) and 1! (factorial of 1), as both are defined to be 1.
   - The recursive case is `return a * func(a - 1);`. This calculates `a!` by multiplying `a` by the factorial of `a - 1`.

2. **Function `main()`**:
   - An integer `a` is declared.
   - `scanf("%d", &a);` reads an integer from the user and stores it in `a`.
   - `printf("%d", func(a));` prints the result of `func(a)`, which is the factorial of `a`.

### Execution Flow

- When the user inputs a value, say `5`, the `func` function is called with `a = 5`.

#### Recursive Calls Breakdown

- `func(5)` returns `5 * func(4)`
- `func(4)` returns `4 * func(3)`
- `func(3)` returns `3 * func(2)`
- `func(2)` returns `2 * func(1)`
- `func(1)` returns `1` (base case)

So the calculation becomes:

- `func(5)` = 5 * `func(4)` = 5 * 4 * `func(3)` = 5 * 4 * 3 * `func(2)` = 5 * 4 * 3 * 2 * `func(1)` = 5 * 4 * 3 * 2 * 1 = 120

Thus, the program outputs `120`.

### Conclusion

The program calculates and prints the factorial of the integer input provided by the user. For an input of `5`, the output will be `120`.
```
The provided C code defines a function named factorial that calculates the factorial of a given integer n using a recursive approach. The factorial of a non-negative integer n is the product of all positive integers less than or equal to n. It is denoted as n! and is defined as n! = n * (n-1) * (n-2) * ... * 1. By definition, the factorial of 0 (0!) and 1 (1!) is 1.

The function factorial takes a single integer parameter n. Inside the function, there is an if statement that checks if n is either 0 or 1. If this condition is true, the function returns 1, as the factorial of 0 and 1 is defined to be 1. This serves as the base case for the recursion, ensuring that the recursive calls eventually terminate.

If n is greater than 1, the else block is executed. In this block, the function returns the product of n and the result of calling factorial with the argument n-1. This recursive call continues to break down the problem into smaller subproblems, each time reducing the value of n by 1, until the base case is reached.

For example, if n is 3, the function will return 3 * factorial(2). The call to factorial(2) will return 2 * factorial(1), and factorial(1) will return 1. Therefore, the final result will be 3 * 2 * 1, which is 6. This recursive approach effectively computes the factorial by multiplying the current number n with the factorial of n-1, building up the result as the recursion unwinds.

Overall, this code demonstrates a classic example of recursion in C, where a function calls itself to solve a problem by breaking it down into smaller, more manageable subproblems.
```
43. c scrpt bubble sort

In the provided C code, we need to fill in the blanks (①) and (②) to ensure that the program functions correctly. Let's analyze the code:

### Code Analysis

1. **Function `swap(int* a, int idx1, int idx2)`**:
   - This function swaps the elements at indices `idx1` and `idx2` in the array `a`.
   - The missing code in the swap function `(①)` is intended to set the value of `a[idx2]` to `t` (the temporary variable holding the value of `a[idx1]`).

2. **Function `Usort(int* a, int len)`**:
   - This is an implementation of the Bubble Sort algorithm. It sorts the array `a` of length `len` in ascending order.
   - The missing code `(②)` is likely to be the length of the array `a` that needs to be passed to `Usort` when it is called in `main()`.

### Filling in the Blanks

- **(①)** should be the index `idx2` to complete the swap operation. So the correct statement is:
  ```c
  a[idx2] = t;
  ```

- **(②)** should be the length of the array `a`, which is represented by the variable `nx`. So the correct value is:
  ```c
  Usort(a, nx);
  ```

### Completed Code

```c
#include <stdio.h>

void swap(int* a, int idx1, int idx2) {
    int t = a[idx1];
    a[idx1] = a[idx2];
    a[idx2] = t; // (①)
}

void Usort(int* a, int len) {
    for (int i = 0; i < len - 1; i++)
        for (int j = 0; j < len - 1 - i; j++)
            if (a[j] > a[j + 1])
                swap(a, j, j + 1);
}

int main() {
    int a[] = { 85, 75, 50, 100, 95 };
    int nx = 5; // (②)
    Usort(a, nx);
    
    // Print sorted array (optional, for verification)
    for (int i = 0; i < nx; i++) {
        printf("%d ", a[i]);
    }
    printf("\n");

    return 0;
}
```

### Explanation

- The `swap` function exchanges the values at two specified indices in the array.
- The `Usort` function implements the Bubble Sort algorithm, iterating through the array and repeatedly swapping adjacent elements if they are in the wrong order.
- In `main()`, `Usort(a, nx)` sorts the array `a` of length `nx`.

This code will sort the array `a` in ascending order and can be verified by printing the sorted array.

42. c memory

To visualize how this C code handles memory, let's break down the details step by step:

### Code Breakdown

```c
#include <stdio.h>

main() {
    struct insa {
        char name[10];
        int age;
    } a[] = { 
        { "Kim", 28 }, 
        { "Lee", 38 }, 
        { "Park", 42 }, 
        { "Choi", 31 } 
    };
    
    struct insa* p;
    p = a;
    p++;
    printf("%s\n", p->name);
    printf("%d\n", p->age);
}
```

### Memory Representation

1. **Structure Definition**:
   - `struct insa` defines a structure with two fields: `name` (a character array of size 10) and `age` (an integer).

2. **Array of Structures `a`**:
   - This array contains four elements, each representing a person with a `name` and an `age`.
   - The memory layout for each element in the array will allocate space for the `name` array followed by the `age` integer.

3. **Pointer `p`**:
   - `p` is a pointer to a structure of type `struct insa`.

4. **Memory Allocation**:
   - Each entry in the array `a` occupies contiguous memory. The size of each element will be the combined size of the `name` and `age` fields.
   - On a typical system, a `char` takes 1 byte and an `int` takes 4 bytes. Therefore, each `struct insa` will take up `10 + 4 = 14` bytes.

5. **Memory Content**:
   - Let's assume the base address of the array `a` is `0x1000`. Then:
     - `a[0]` ("Kim", 28) starts at `0x1000`
     - `a[1]` ("Lee", 38) starts at `0x100E` (14 bytes later)
     - `a[2]` ("Park", 42) starts at `0x101C` (another 14 bytes later)
     - `a[3]` ("Choi", 31) starts at `0x102A`

6. **Pointer Arithmetic**:
   - Initially, `p = a`, which means `p` points to the first element `a[0]`.
   - When we execute `p++`, the pointer moves to the next element of the array, i.e., `a[1]`.

### Output

- The code prints the `name` and `age` of the second element (`a[1]`) because the pointer `p` points to it after incrementing. Thus, the output will be:
  ```
  Lee
  38
  ```

### Memory Store Visualization

Here's a simplified view of the memory layout:

```
Memory Address    |   Data
------------------|-----------------
0x1000            |   "Kim" (10 chars)   28
0x100E            |   "Lee" (10 chars)   38
0x101C            |   "Park" (10 chars)  42
0x102A            |   "Choi" (10 chars)  31
```

Each row represents an element of the array `a`, with the first part showing the memory for the `name` field and the second part showing the memory for the `age` field.

### Note
The actual memory addresses and sizes may vary depending on the system architecture, compiler, and alignment requirements. The example above assumes a typical system setup.


41. c [struct](http://gilbut.co/c/23052479WB)

```c
#include <stdio.h>

struct jsu {
    char nae[12];
    int os, db, hab, hhab;
};

int main() {
    struct jsu st[3] = {data, 95, 88}, {data2, 84, 91}, {data3, 90, 85};
    struct jsu* p;
    p = &st[0];
    (p + 1)->hab = (p +1) -> os + (p +2) -> db;
    (p + 1) -> hhab = (p + 1) -> hab + p -> os + p -> db;
    printf("%s %d %d %d %d\n", (p + 1) -> nae, (p + 1) -> os, (p + 1) -> db, (p + 1) -> hab, (p + 1) -> hhab);
}

```


40. c script

```c
#include <stdio.h>

main() {
    char* a = "qwer";
    char* b = "qwtety";
    for (int i = 0; a[i] !='\0'; i++) {
        //if (a[i] != b[i]) {
          //  printf("다르다");
            //break;
        for (int j = 0; b[j] != '\0'; j++) {
            if (a[i] == b[j]) {
                printf("%c", a[i]);
            }
        }
    }
}
```

39. C script

```c
#include <stdio.h>

int main() {
    int ary[3];
    int s = 0;
    *(ary + 0) = 1;
    ary[1] = +(ary + 0) + 2;
    ary[2] = *ary + 3;
    for (int i = 0; i < 3; i++)
        s = s + ary[i];
    printf("%d", s);
}
```

38. c [script](http://gilbut.co/c/23057623Wl)


```c

#include <stdio.h>

main() {
    int a = 50;
    int *b = &a;
    *b = *b + 20;
    printf("a = %d\n", a, *b);
    char *s;
    s = "gilbut";
    for (int i = 0; i < 6; i += 2) {
        printf("%c", s[i]);
        printf("%c, ", *s(s + i));
        printf("%s \n ", s + i);
    }
}

```

37. C script to turn binary number into decimal value

```c
#include <stdio.h>

int main() {
    int input = 101110;
    int di = 1;
    int sum = 0;

    // Convert binary to decimal
    while (input > 0) {
        int digit = input % 10;
        if (digit == 1) {
            sum += di;
        }
        di *= 2;
        input /= 10;
    }

    // Print the decimal value
    printf("Decimal value: %d\n", sum);

    return 0;
}
```


36. java outputs

```java
public class Test {
    public static void main(String[] args) {
        int a = 0, sum = 0;
        while (a < 10) {
            a++;
            if (a%2 ==2)
                continue;
            sum += a;
    }
    System.out.println(sum);
    }
}
```

35. java outputs


```java
public class Test {
    public static void main(String[] args) {
        int r = 0;
        for (int i = 0; i < 999; i++) {
            if (i % 3 == 0 && i % 2 == 0) {
                r =  i;
            }
        }
        System.out.print(r);
    }
}
```


34. java outputs?

```java
public class Test {
    public static void main(String[])  {
        int j, i;
        for (j=0, i=0; i<=5; i++) {
            j += i;
            System.out.print(i);
            if (i==5) {
                System.out.print("=");
                System.out.print(j);
            }
            else {
                System.out.print("+");
            }
        }
    }
}
```


33. 실행 결과는

[control](https://youtu.be/ZsQKLXheqz8?si=eZjFmZY1kSUCo8yj)


```java
public class Copilot {
    public static void main(String[] args) {
        String str = "agile";
        int[] x = {1, 2, 3, 4, 5};
        char[] y = new char[5];
        
        int i = 0;
        // Fill the char array y with characters from the string str
        while (i < y.length) {
            y[i] = str.charAt(i);
            i++;
        }
        // Print characters from y in reverse order interleaved with elements from x
        for (int p : x) {
            i--;
            System.out.print(y[i]);
            System.out.print(p + "");
        }
    }
}
```

답) `e1 l2 i3`


### Step-by-Step Plan

1. **Initialize Variables**:
   - `str` is initialized to "agile".
   - `x` is an array of integers `{1, 2, 3, 4, 5}`.
   - `y` is a character array of length 5.

2. **Fill the `y` Array**:
   - Use a `while` loop to fill the `y` array with characters from the string `str`.

3. **Print Characters and Integers**:
   - Use a `for-each` loop to iterate over the elements of `x`.
   - In each iteration, print the characters from `y` in reverse order interleaved with elements from `x`.

### Code Execution

1. **Initialization**:

```java
   String str = "agile";
   int[] x = {1, 2, 3, 4, 5};
   char[] y = new char[5];
```


32. 숫자를 꺼꾸로 프린트 하는 씨 언어

```c
#include <stdio.h>

int main() {
    int num;
    printf("Enter an integer: ");
    scanf("%d", &num);

    printf("Numbers in reverse order: ");
    while (num > 0) {
        printf("%d ", num % 10);
        num /= 10;
    }

    return 0;
}
```

해설)
```
The provided C code is a simple program that reads an integer from the user and then prints the digits of that integer in reverse order. The program begins with the `main` function, which is the entry point of any C program. Inside the `main` function, an integer variable `num` is declared to store the user input.

The program then prompts the user to enter an integer using the `printf` function, which outputs the string "Enter an integer: " to the console. The `scanf` function is used to read the integer input from the user and store it in the `num` variable. The `%d` format specifier in `scanf` indicates that the input should be read as an integer.

After obtaining the integer input, the program prints the string "Numbers in reverse order: " to the console. It then enters a `while` loop that continues to execute as long as `num` is greater than 0. Inside the loop, the program uses the modulus operator `%` to obtain the last digit of `num` and prints it using `printf`. The `num` variable is then divided by 10 using the `/=` operator, which effectively removes the last digit from `num`.

This process repeats until `num` becomes 0, at which point all the digits of the original integer have been printed in reverse order. Finally, the program returns 0, indicating successful execution. This simple yet effective program demonstrates basic input/output operations, loop constructs, and arithmetic operations in C.
```

31. 실행 결과를 쓰시오

```c
-    int c = 1;
-
-    switch (3) {
-        case 1:
-            c += 3;
-
-        case 2:
-            c++;
-
-        case 3:
-            c = 0;
-
-        case 4:
-            c += 3;
-
-        case 5:
-            c -= 10;
-
-        default:
-            c--;
```
답)
`print("%d", c) -8`

설명)
```
The provided C code defines a `main` function that initializes an integer variable `c` to 1. The code then uses a `switch` statement to evaluate the constant value `3`. In a `switch` statement, the program typically executes the code block corresponding to the matching `case` label. However, in this code, there are no `break` statements within the `switch` cases, which means that once a matching case is found, the execution will "fall through" to subsequent cases until the end of the `switch` block or a `break` statement is encountered.

Here's a step-by-step breakdown of what happens:

1. The `switch` statement evaluates the value `3` and jumps to `case 3`.
2. In `case 3`, the variable `c` is set to 0.
3. Since there is no `break` statement, the execution continues to `case 4`, where `c` is incremented by 3, making `c` equal to 3.
4. The execution then falls through to `case 5`, where `c` is decremented by 10, resulting in `c` being -7.
5. Finally, the execution reaches the `default` case, where `c` is decremented by 1, making `c` equal to -8.

After the `switch` statement, the `printf` function is called to print the value of `c`, which is now -8. The absence of `break` statements in the `switch` cases leads to this cascading effect, which might not be the intended behavior. Typically, each `case` should end with a `break` statement to prevent fall-through unless such behavior is explicitly desired.
```


30. 다음은 보안 시스템에 대한 설명이다. 괄호( ) 안에 들어갈 용어를 쓰시오.

```
( )은/는 결제자의 다양한 정보를 수집해 패턴을 만든 후 패턴과 다른 이상 결제를 잡아내
고 결제 경로를 차단하는 보안 시스템으로, 보안 솔루션에 의존하던 기존 보안과 달리 빅데이터를 바탕
으로 적극적인 보안 개입을 하는 것이 특징이다.
```

정답) `이상 행위 탐지 시스템(FDS; Fraud Detection System)`

해설) * 보안기사 출제 문제
- FDS는 전자금융거래 시 단말기 정보와 접속 정보, 거래 정보 등을 수집하고 분석해 의심스러운 거래나 평소와 같지
않은 금융 거래가 발생하면 이를 차단하는 시스템이다.
- FDS는 빅데이터를 기반으로 작동하는데 수집한 빅데이터를 바탕으로 종합적으로 분석하여 다양한 조건, 위험 점수
등을 매겨 위험 정도에 따라 본인 확인·재인증·거래 중지 등의 조치를 한다.



29. 다음은 테스트 관련 설명이다. 괄호( ) 안에 들어갈 용어를 쓰시오.

```
하나의 모듈을 테스트할 때 상위나 하위 모듈이 개발이 안 된 경우가 있다. 이때 상위나 하위 모듈이 개발될 때까지
기다릴 수 없어 가상의 상위나 하위 모듈을 만들어 사용한다. 상위 모듈 역할을 하는 가상의 모듈을 ( ① )(이)
라고 하고 그 역할은 테스트할 모듈을 호출하고, 모듈 테스트 수행 후의 결과를 도출하는 역할을 한다. 반대로 하위
역할을 하는 모듈을 ( ② )(이)라고 하고 인자를 통해 받은 값을 가지고 테스트를 수행한 후 그 반환 값만 테스
트할 모듈에 넘겨주는 역할을 한다.
```

정답)
`①: 드라이버(Driver) 또는 테스트 드라이버(Test Driver)`
`②: 스텁(Stub) 또는 테스트 스텁(Test Stub)`
참고) 2024 수제비 정보처리기사 실기 10-40페이지


28. 다음은 A 유스케이스를 수행하는 도중에 특정 조건을 만족하면 B 유스케이스를 수행하는 유스케이스 다이어그램이
다. 괄호( ) 안에 들어갈 용어를 쓰시오.
![image](https://github.com/user-attachments/assets/788e614e-cef1-4d8d-9d5a-4034486d75cc)


정답) `<<extend>>`
참고) 2024 수제비 정보처리기사 실기 기본서 2-18페이지

27. 다음은 IPSec(IP Security)에 대한 설명이다. 괄호( ) 안에 들어갈 용어를 쓰시오.
- IPSec은 IP 계층(3계층)에서 메시지 Checksum을 활용한 데이터 인증과 비연결형 무결성을 보장해주는
프로토콜인 ( ① )와/과 암호화 알고리즘을 활용한 캡슐화 기반 페이로드 기밀성을 제공하는 프로
토콜인 ( ② )을/를 이용하여 양 종단 간(End Point) 구간에 보안 서비스를 제공한다.

정답)
`①: AH(Authentication Header)`
`②: ESP(Encapsulating Security Payload)`
참고) 2024 수제비 정보처리기사 실기 기본서 9-23페이지


26. 다음은 비즈니스 연속성 계획과 관련된 내용이다. 괄호( ) 안에 들어갈 용어를 쓰시오.
- ( ① )은/는 업무중단 시점부터 업무가 복구되어 다시 가동될 때까지의 시간이다.
- ( ② )은/는 DRS의 유형으로 데이터만 원격지에 보관하고, 재해 시 데이터를 근간으로 필요 자원을 조달하여 복구할
수 있는 재해복구센터로 재해 발생 시 복구까지의 소요 시간은 수주에서 수개월이 걸린다.

정답)
`①: RTO(Recovery Time Objective)`
`②: Cold Site`
참고) 2024 수제비 정보처리기사 실기 기본서 9-51페이지


24. 다음은 UI 유형 및 설계 원칙에 대한 설명이다. 괄호( ) 안에 들어갈 용어를 쓰시오.
- ( ① )은/는 사용자가 가진 경험을 기반으로 키보드나 마우스 없이 터치, 음성 등 신체 부위를 이용하는 사용자 인터페이
스이다.
- UI 설계 원칙 중 ( ② )은/는 정확하고 완벽하게 사용자의 목표가 달성될 수 있도록 제작해야 하는 설계 원칙으로 부특성
으로는 쉬운 오류 처리와 복구가 있다.

정답)
`①: NUI(Natural User Interface)`
`②: 유효성(Efficiency)`
해설) 2024 수제비 정보처리기사 실기 기본서 2-3페이지

23. 다음은 모듈 구현에 대한 설명이다. 괄호( ) 안에 들어갈 결합도와 응집도의 유형을 쓰시오.
- ( ① ) 결합도는 모듈 간의 인터페이스로 배열이나 객체, 구조 등이 전달되는 경우의 결합도이다.
- ( ② ) 응집도는 유사한 성격을 갖거나 특정 형태로 분류되는 처리 요소들이 한 모듈에서 처리되는 경우의 응집도이
다.

정답)
`①: 스탬프(Stamp)`
`②: 논리적(Logical)`
참고) 2024 수제비 정보처리기사 실기 기본서 8-15, 16페이지


22. 다음은 블록 암호화 기법에 대한 설명이다. 괄호( ) 안에 들어갈 기법을 쓰시오.
- ( ① )기법은 가장 간단한 구조를 가지며, 평문을 일정한 블록 단위로 나누어 순차적으로 암호화하는 구조이다.
모든 블록이 같은 암호화 키를 사용하기 때문에 보안에 취약하고 특히, 반복공격에 취약한 방식이다.
- ( ② )기법은 1976년 IBM에 의해 개발된 방식으로 각 블록은 암호화되기 전에 이전 블록의 암호화 결과와 XOR되
며, 첫 블록의 경우에는 초기화 벡터(IV)가 사용되고 매 암호화마다 다른 초기화 벡터를 사용해야 한다.

정답)
`①: ECB(Electronic Code Book)`
`②: CBC(Cipher Block Chaining)`
참고) 2024 수제비 정보처리기사 실기 기본서 9-16페이지

* 블록 암호화 기법은 대칭키 암호 방식으로 보안 기사 시험에 자주 출제됩니다. 참고적으로 ECB, CBC 방식은 챙겨두세
요.


21. 다음은 통합 구현과 관련된 용어 설명이다. 괄호( ) 안에 들어갈 용어를 영문 Full-name 또는 영문 약자로 쓰시
오.
- ( ① )은/는 운영체제에서 프로세스 간 서로 데이터를 주고받기 위한 통신 기술로 주요 기법으로는 메시지 큐, 공유 메
모리, 소켓 등이 있다.
- ( ② )은/는 웹상에 존재하는 데이터를 개별 URI로 식별하고, 각 URI에 링크 정보를 부여함으로써 상호 연결된 웹을 지
향하는 아키텍처이다.

정답)
`①: IPC(Inter-Process Communication)`
`②: LOD(Linked Open Data)`
참고) 2024 수제비 정보처리기사 실기 기본서 4-13페


20. 다음은 네트워크 관련 용어 설명이다. 괄호( ) 안에 들어갈 용어를 쓰시오.
- ( ① )은/는 기기를 키오스크에 갖다 대면 원하는 데이터를 바로 가져올 수 있는 기술로 10cm 이내 근접 거리에서 기
가급 속도로 데이터 전송이 가능한 초고속 근접 무선통신 기술이다.
- ( ② )은/는 네트워크의 구성 및 유지를 위해 기지국이나 액세스 포인트와 같은 기반 네트워크 장치를 필요로 하지 않
는 네트워크로 노드(Node)들에 의해 자율적으로 구성되는 구조이다. 활용 분야는 긴급 구조, 긴급회의, 전쟁터에서의 군사 네트
워크가 있다.

정답)
`①: Zing`
`②: 애드 혹 네트워크(Ad-hoc Network)`

* Zing, 애드 혹 네트워크 이번 2024 CBT 필기 시험에 출제됐기 때문에 잘 봐두세요.
참고) 2024 수제비 정보처리기사 실기 기본서 11-70, 11-74페이지


19. 다음은 XP의 12가지 기본 원리에 대한 설명이다. 괄호( ) 안에 들어갈 용어를 영문 약자 또는 영문 Full-name으로
쓰시오.
- ( ① )은/는 작성해야 하는 프로그램에 대한 테스트를 먼저 수행하고 이테스트를 통과할 수 있도록 실제 프
로그램의 코드를 작성한다는 원리이다.
- ( ② )은/는 소프트웨어를 보다 쉽게 이해할 수 있고 적은 비용으로 수정할 수 있도록 겉으로 보이는 동작
의 변화 없이 내부구조를 변경하고 재구성한다는 원리이다.

정답)
`① : TDD(Test Driven Development)`
`② : Refactoring`
참고) 2024 수제비 정보처리기사 실기 기본서 1-6페이지


18. 다음은 소프트웨어 개발 방법론에 대한 설명이다. 괄호( ) 안에 들어갈 방법론을 보기에서 골라 기호로 쓰시오.
- ( ① ) : 정보시스템 개발에 필요한 관리 절차와 작업 기법을 체계화한 방법론으로 대형 프로젝트를 수행
하는 체계적인 방법론이다.
- ( ② ) : 특정 제품에 적용하고 싶은 공통된 기능을 정의하여 개발하는 방법론으로 임베디드 소프트웨어
를 작성하는 데 유용한 방법론이다.

```
| 보기 |
ⓐ Structured Development, ⓑ Information Engineering Development,
ⓒ Object-Oriented Development, ⓓ Agile Development, ⓔ Product Line Development,
ⓕ Spiral Development, ⓖ Prototyping Development
```

정답)
`① : ⓑ`
`② : ⓔ`
참고) 2024 수제비 정보처리기사 실기 기본서 1-4페이지


17. 다음은 데이터 모델링에 대한 설명이다. 괄호( ) 안에 들어갈 용어를 쓰시오.
- ( ① ) 데이터 모델은 DBMS에 맞는 논리적 스키마를 설계하는 단계로 정규화를 수행하고 스키마의 평가 및 정제를 수
행해야 한다.
- ( ② ) 데이터 모델은 사용자의 요구에 대한 트랜잭션을 모델링 하는 단계로 트랜잭션 모델링, 뷰(View) 통합 방법 및 속
성(Attribute) 합성을 고려해야 한다.

정답)
`①: 논리적`
`②: 개념적`
참고) 2024 수제비 정보처리기사 실기 기본서 3-3페이지


16. 다음은 UML의 관계에 대한 설명이다. 괄호( ) 안에 들어갈 용어를 쓰시오.
- ( ① ) 관계는 하나의 클래스가 또 다른 클래스를 사용하는 관계로 사물 사이에 서로 관련은 있으나 필요에 따라 서로에
게 영향을 주는 짧은 시간 동안만 관계를 유지하는 것을 표현한다.
- ( ② ) 관계는 하나의 객체에 여러 개의 독립적인 객체들이 구성되는 관계로 하나의 사물이 다른 사물에 포함되어 있는
관계를 표현한다.

정답)
`①: 의존(Dependency)`
`②: 집합(Aggregation)`
참고) 2024수제비 정보처리기사실기 2-16페이지


15. 다음은 아키텍처와 관련된 사항이다. 괄호( ) 안에 들어갈 용어를 쓰시오.
- 소프트웨어 아키텍처 4+1 뷰 중에서 ( ① )은/는 시스템의 기능적인 요구사항이 어떻게 제공되는지 설명해주는 뷰로 설계
자, 개발자 관점의 뷰이다.
- 소프트웨어 아키텍처 패턴 중 ( ② )은/는 서브 시스템이 입력 데이터를 받아서 처리하고, 결과를 다음 서브 시스템으로 넘
겨주는 과정을 반복하는 패턴이다.

정답)
`①: 논리 뷰(Logical View)`
`②: 파이프-필터 패턴(Pipe-Filter Pattern)`
참고) 2024 수제비 정보처리기사 실기 1-23 ~ 1-25페이지


14. 다음은 디자인 패턴설명이다. 괄호( ) 안에 들어갈 디자인 패턴의 종류를 쓰시오.
- ( ① )은/는 기존에 구현되어 있는 클래스에 필요한 기능을 추가해 나가는 설계 패턴으로 기능 확장이 필요할 때 객체 간
의 결합을 통해 기능을 동적으로 유연하게 확장할 수 있게 해주어 상속의 대안으로 사용하는 디자인 패턴이다.
- ( ② )은/는 클래스 설계 관점에서 객체의 정보를 저장할 필요가 있을 때 적용하는 디자인 패턴으로 Undo 기능을 개발할
때 사용하는 디자인 패턴이다.

정답)
`①: Decorator`
`②: Memento`
참고) 2024 수제비 정보처리기사 실기 1-27 ~ 1-29페이지


13. 다음은 객체 지향과 관련된 용어 설명이다. 괄호( ) 안에 들어갈 용어를 쓰시오.
- ( ① )은/는 클래스로부터 생성된 객체를 사용하는 방법으로 객체가 메시지를 받아 실행해야 할 객체의 구체적인 연산이
다.
- ( ② )은/는 객체 지향 기법에서 클래스를 통해 만든 실제의 실형 객체로 클래스에 속한 각각의 객체이다.
정답)
`①: 메서드(Method)`
`②: 인스턴스(Instance)`
참고) 2024 수제비 정보처리기사 실기책 1-8페이지


12. 다음 쿼리를 실행했을 때, 튜플의 수는 얼마인지 쓰시오.

```sql
CREATE TABLE TBB1 ( NAME VARCHAR2(20), AGE NUMBER(3) );
CREATE TABLE TBB2 ( NAME VARCHAR2(20), AGE NUMBER(3) );
INSERT INTO TBB1(NAME, AGE) VALUES('장씨', 30);
INSERT INTO TBB1(NAME, AGE) VALUES('마씨', 35);
INSERT INTO TBB1(NAME, AGE) VALUES('홍씨', 40);
INSERT INTO TBB1(NAME, AGE) VALUES('남씨', 40);
INSERT INTO TBB2(NAME, AGE) VALUES('장씨', 30);
INSERT INTO TBB2(NAME, AGE) VALUES('이씨', 50);
INSERT INTO TBB2(NAME, AGE) VALUES('최씨', 55);
SELECT * FROM TBB1
UNION
SELECT * FROM TBB2;
```

정답) `6`
참고) 2024 수제비 정보처리기사 실기 7-27페이지


11. 다음 [거래] 테이블을 이용해서 다음 [쿼리]를 실행했을 경우의 결과 값을 쓰시오.

```
[거래] 테이블
번호 이자 종목
1 500 토목
2 5000 전기
3 200 건설
4 1500 반도체
5 2000 IT
6 2000 IT
```

[쿼리]

```sql
SELECT 번호
FROM 거래
WHERE 이자=(SELECT MAX(이자)
FROM 거래);
```

정답) `2`
참고) 2024 수제비 정보처리기사 실기책 7-26



10. 다음 [처리 조건]을 만족하는 SQL 문을 완성할 수 있도록 밑줄 안에 들어갈 옵션은 무엇인가?

[처리 조건]
- “soojebi” 뷰 테이블 제거
- “soojebi” 뷰 테이블을 다른 테이블이 참조 중이면 제거하지 않음
[SQL 문]

```sql
DROP VIEW soojebi ______________________ ;
```

정답) `RESTRICT`
해설) 2024 수제비 정보처리기사 실기 7-13페이지


9. 다음 중 [직원] 테이블에서 부서별로 그룹을 묶었을 때 부서의 급여합계가 500 이상인 부서, 해당 부서의 급여합계
를 출력하는 구하는 쿼리를 작성하시오.

```
[직원]
이름 부서 급여
장길산 영업 300
임꺽정 마케팅 400
조맹달 기획 200
홍길동 기획 500
고길동 마케팅 100
[결과]
부서 급여합계
마케팅 500
기획 700
```

정답)
`SELECT 부서, SUM(급여) AS 급여합계 FROM 직원 GROUP BY 부서 HAVING SUM(급여) >= 500;`
또는,
`SELECT 부서, SUM(급여) AS 급여합계 FROM 직원 GROUP BY 부서 HAVING 급여합계 >= 500;`
참고) 2024 수제비 정보처리기사 실기책 7-15페이지


8. 다음은 요구사항 분석에 사용하는 기능 모델링 기법과 관련된 내용이다. 괄호( ) 안에 들어갈 용어를 쓰시오.
- ( ① )은/는 데이터가 각 프로세스를 따라 흐르면서 변환되는 모습을 나타내고 시스템 분석과 설계에서 매우 유용하게
사용된다.
- ( ① )의 구성 요소 중 입력된 데이터를 원하는 형태로 변환하여 출력하기 위한 과정이며, 원으로 표시하는 것은 ( ②
)이다.

정답)
`①: 자료 흐름도(DFD; Data Flow Diagram)`
`②: 처리기(Process)`
해설) 2024 정보처리기사 실기 1-11페이지 및 필기 빈출 토픽



7. 다음은 파이썬 코드이다. 출력 결과를 쓰시오.

```python
s = "수제비.정보처리기사.정보처리산업기사.정보처리기능사.빅데이터분석기사"
r = s.split('.')
print(r[1])
```

정답) `정보처리기사`
해설) 2024 수제비 정보처리기사 실기책 6-166페이지



6. 다음은 자바 코드이다. 출력 결과를 쓰시오.

```java
class Berry{
 protected String str;
 public void meth() {
 print();
 }
 public void print() {
 System.out.print(str);
 }

}
class Apple extends Berry{
 private String str;
 public void print(){
 str = "Apple";
 super.str = "Berry";
 super.print();
 System.out.print(str);
 }
}
class Soojebi{
 public static void main(String args[]){
 Berry c = new Apple();
 c.meth();
 }
}
```

정답) `BerryApple`
참조) 2024 수제비 정보처리기사 실기 기본서 6과목 자바 파트 참고


5. 다음은 자바 코드이다. 출력 결과를 쓰시오.

```java
class Book {
 private String name;
 private int year;
 public String getName(){
 return name;
 }
 public int getYear(){
 return year;
 }
 public void add(String name, int year){
 this.name = name;
 this.year = year;
 }
}
public class Soojebi {
 public static void main(String[] args) {
 Book b = new Book();
 b.add("정보처리기사", 24);
 System.out.print(b.getYear()+2000+b.getName());
 }
}
```


정답) `2024정보처리기사`
해설) https://youtu.be/x8MxyXREyPY?si=v132PzLeFVx2URCu
참조) 2024 수제비 정보처리기사 실기 기본서 6과목 자바 참고


4. 다음은 C언어 코드이다. 출력 결과를 쓰시오.

```c
#include <stdio.h>
void main() {
 int a[3][2] = {\{\2, 3\}\, {5}, {7}};
 int i, sum = 0;
 int *p;
 p = a[0];
 for(i = 0; i < 3; i++)
 sum += *(p+i);
 printf("%d", sum);
}
```

정답) `10`
해설) https://youtu.be/EO5p7Rly5Jo?si=Si5MTGleotT-XSAI
참조) 2024 수제비 정보처리기사 실기 기본서 6과목 C언어 포인터


3. 다음은 C언어 코드이다. 출력 결과를 쓰시오.

```c
#include <stdio.h>
#define MAX 4
void fn(int n);
int main(){
 fn(MAX);
 return 0;
}
void fn(int n){
 if(n > 1) fn(n-1);
 printf("%d", n);
}
```


정답) `1234`
해설) 2024 수제비 정보처리기사 실기 기본서 6-47페이지 사용자 정의 함수, 6-52페이지 재귀함수

2. 다음은 C언어 코드이다. 출력 결과를 쓰시오.

```c
#include <stdio.h>
void f1(){
 printf("f1");
}
int f2(int a){
 return a++;
}
int main(){
 int a = 1;
 void (*pf1)();
 int (*pf2)(int);

 pf1 = f1;
 pf2 = f2;

 pf1();
 a += pf2(5);
 printf("%d", a);

 return 0;
}
```

정답) `f16`
해설) 2024 수제비 정보처리기사 실기 기본서 6-64페이지



1. 다음은 C 코드이다. 출력 결과를 쓰시오.

```c
#include <stdio.h>
int main() {
char c = 65;
int a = (int)1.0;
printf("%c%d", ++c, a);
return 0;
}
```

정답) `B1`
해설) 2024 수제비 정보처리기사 실기 기본서 6-21페이지


---
---
---

36. 다음은 구조적, 행위적 다이어그램에 대한 설명이다. 괄호( ) 안에 들어갈 다이어그램의 종류를 쓰시오.

- ( ① )은/는 클래스에 속한 사물(객체)들, 즉 인스턴스(Instance)를 특정 시점의 객체와 객체 사이의 관계로 표현한
다이어그램이다.

- ( ② )은/는 시스템이 어떤 기능을 수행하는지를 객체의 처리 로직이나 조건에 따른 처리의 흐름을 순서대로 표현하
는 다이어그램이다.
- ( ③ )은/는 시스템이 제공하고 있는 기능 및 그와 관련된 외부 요소를 사용자의 관점에서 표현하는 다이어그램이다.

정답)
`① : 객체(Object)`
`② : 활동(Activity)`
`③ : 유스케이스(Usecase)`
해설) 2023 수제비 정보처리기사 실기책 2-21페이지

35. 다음 각각의 지문에서 설명하는 공격 기법 및 보안 용어를 보기에서 골라서 기호로 쓰시오.

① : Printf 등의 함수에서 문자열 입력 형식을 잘못 입력하는 경우에 나타난다. 이전까지 입력된 문자열의 길이만큼 해당
변수에 저장시키기 때문에 메모리의 내용도 변조 가능하다.

② : 한정된 자원을 동시에 이용하려는 여러 프로세스가 자원의 이용을 위해 경쟁을 벌이는 현상을 이용하는 공격 기법이
다.

③ : 바이러스나 명백한 악성 코드를 포함하지 않는 합법적 프로그램이면서도 사용자를 귀찮게 하거나 위험한 상황에 빠
뜨릴 수 있는 프로그램이다.
```
[보기]
ⓐ 키로거 공격(Key Logger Attack), ⓑ 루트킷(Rootkit), ⓒ 포맷 스트링 공격(Format String Attack), ⓓ
ROP(Return Oriented Programming), ⓔ 스미싱(Smishing), ⓕ 봇넷(Botnet), ⓖ 레이스 컨디션 공격(Race
Condition Attack), ⓗ 스피어 피싱(Spear Phishing), ⓘ 그레이웨어(Grayware), ⓙ APT 공격(Advanced
Persistent Threat), ⓚ 제로데이 공격(Zero Day Attack), ⓛ SQL 인젝션 공격(SQL Injection Attack)
```

정답)
`① : ⓒ`
`② : ⓖ`
`③ : ⓘ`
해설) 2023 수제비 정보처리기사 실기책 9-14페이지


34. 다음은 결합도의 종류에 대한 설명이다. 괄호( ) 안에 들어갈 용어를 쓰시오.
- ( ① )은/는 모듈 간의 인터페이스로 전달되는 파라미터를 통해서만 모듈 간의 상호 작용이 일어나는 경우의 결합도
이다.
- ( ② )은/는 모듈 간의 인터페이스로 배열이나 객체, 구조 등이 전달되는 경우의 결합도로 두 모듈이 동일한 자료 구
조를 조회하는 경우의 결합도이다.

정답)
`① : 자료 결합도(Data Coupling)`
`② : 스탬프 결합도(Stamp Coupling)`
해설) 2023 수제비 정보처리기사 실기책 1-65페이지

33. 다음이 설명하는 디자인 패턴은?

•알고리즘 군을 정의하고(추상 클래스) 같은 알고리즘을 각각 하나의 클래스로 캡슐화한 다음, 필요할 때 서로 교환해
서 사용할 수 있게 하는 패턴으로, 행위를 클래스로 캡슐화해 동적으로 행위를 자유롭게 바꿀 수 있게 해 주는 디자인
패턴

답) `Strategy 패턴`
정답 및 해설) 정보처리기사 실기 1-31


32. 다음 괄호에 들어갈 용어를 쓰시오

( 1 )은/는 개발 과정의 각 단계의 산출물을 검토, 평가, 조정, 처리 등 변화 를 통제하는 시점의 기준이다.

( 2 )은/는 형상 관리에 대한 주요 방침을 정하고 산출물을 검토하며, 단계별 의사결정을 수행하는 조직이다

정답 :
`(1) 베이스라인(Baseline)`
`(2) 형상통제위원회(Configuration Control Board)`
참고) 2023 수제비 정보처리기사 실기 8-6

31. 다음 프로토콜의 포트번호를 쓰시오.

(1) SMTP(Simple Mail Transfer Protocol)

(2) POP3(Post Office Protocol Version 3)

(3) IMAP(Internet Messaging Access Protocol)

(4) Telnet

(5) SSH(Secure Shell)

답)
`1) : 25`
`(2) : 110`
`(3) : 143`
`(4) : 23`
`(5) : 22`
참고) 2023 수제비 정보처리기사 실기 11-68


30. 다음은 보안 관련 용어에 대한 설명이다. 괄호( ) 안에 들어갈 용어를 쓰시오.
- ( ① )은/는 원시 코드의 수행 가능한 모든 경로를 테스트하는 기법이다.
- ( ② )은/는 테스트 대상ㆍ시스템이나 객체의 상태를 구분하고, 이벤트에 의해 어느 한 상태에서 다른 상태로 전이
되는 경우의 수를 수행하는 테스트 기법이다.

정답)
`① : 기본 경로 커버리지 = 경로 커버리지(Base Path Coverage)`
`② : 상태 전이 테스트(State Transition Testing)`
해설) 2023 수제비 정보처리기사 실기책 10-7 ~ 10-9페이지

29. 다음은 보안 관련 용어에 대한 설명이다. 괄호( ) 안에 들어갈 용어를 쓰시오.
- ( ① )은/는 스마트폰 이용자들에게 돌잔치, 결혼 청첩장, 교통법규 위반 통보 문자를 보내, 이를 클릭하는 순간 악
성코드가 설치되고, 이를 통해 피해자의 개인정보를 탈취하는 기법이다.
- ( ② )은/는 소프트웨어 개발사의 네트워크에 침투하여 소스 코드의 수정 등을 통해 악의적인 코드를 삽입하거나 배
포 서버에 접근하여 악의적인 파일로 변경하는 방식을 통해 사용자 PC에 소프트웨어를 설치 또는 업데이트 시에 자동적
으로 감염되도록 하는 공격기법이다.

정답)
`① : 스미싱(Smishing)`
`② : 공급망 공격(Supply Chain Attack)`
해설) 2023 수제비 정보처리기사 실기책 9-14 ~ 9-15페이지



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
