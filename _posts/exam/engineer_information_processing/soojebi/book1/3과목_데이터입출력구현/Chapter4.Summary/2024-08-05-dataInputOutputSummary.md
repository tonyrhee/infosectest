---
categories: [Certificate, "[정보처리기사 Book1]", 3과목 데이터입출력]
title: "3과목[Chapter 4] 데이타모델정리"
---
[본내용](https://github.com/tonyrhee/infosectest/blob/de8bde97d771f1f0b05a03984e0a2229bb63090e/_posts/exam/engineer_information_processing/soojebi/2024-07-17-database%EC%A0%95%EB%A6%AC4%ED%8E%B8.md) 소스파일을 읽을것

## 기본
### 제약조건 
- 후보키
- 기본키
- 대체키
- 수퍼키
- 외래키

## 분산, 클러스팅
- 데이블 위치 분산
-  분할 - 테이블의 데이타를 분할하여 분산, 분산 규칙(완전성, 재구성, 상호줓첩배제), 수평/수직 분할
할당 - 동일한 분할을 여러 서버에 생성하는 분산, 중복이 있는 할당과 없는 할당

- 목표 - 위치 중복 병행 장애 투명성 

### 이중화 클러스팅
- 고가용성 클러스터링
- 병렬처리 클러스터링
- RTO recovery time objective
- RPO recovery point objective
#### 보안
- 기밀성/무결성/접근통제 모델
- 접근통제 기술
  - DAC
  - MAC
  - RBAC

### 자료 구조
- 비선형(트리 그래프)/선형 (배열, 선형리스트, 스택, 큐, 테크)

### 관계 대수 관계 해석


### 이상 함수적 종석

## 정규화
정규화는 테이블의 속설등이 상호 종속적인 과녜를 갖는 특성을 이용하여 테이블을 무손실 분해 하는 과정

> 도부이결다조

- 도에인이 원자값, 부분적 함수 종속제거, 이행적함수 종속제거, 결장자이면서 후보키가 아닌것 제거, 다치 종속제거, 조인종속성 이용

> 기억해야 할 내용

무조건 테이블을 나누는 작업이 아니고 각 단계에서 얻고자 하는 바를 알면 쉽게 해결될 수 있다.

제1 정규화 -> 중복되는 data 분리

 - 저장공간을 최소화하기 위해서

 - N:N 관계를 1:N으로 바꾸기 위해서

 - 수정시 모든 레코드의 data 변경


제 2 정규화(복합키 인 경우만 보면 된다.) -> 부분 종속 분리

 - 원하는 바는 제 1정규화와 동일

제 3 정규화 -> 이행적 종속 관계 분리

 - 삽입이상 제거

 - 삭제이상 제거

BCNF
   - 모든 결정자가 후보키가 되도록 한다

제 4 정규화 

 - 제3정규화된 테이블은 의존적인 다:다 관계를 가질 수 없다.


제 5 정규화

  - 조인 종속이 존재하지 않거나 조인 종속에 의해 분해되는 Projection들이 원래 릴레이션의 후보키를 유지

![diagram](https://postfiles.pstatic.net/20111011_237/jmszzzzz_1318332225482k1NAI_PNG/7_4_%C1%B6%C0%CE_%C1%BE%BC%D3%BC%BA%B0%FA_%C1%A6_5_%C1%A4%B1%D4%C7%FC____%B3%D7%C0%CC%B9%F6_%BA%ED%B7%CE%B1%D7.png?type=w1)

![image](https://github.com/user-attachments/assets/002c8594-78c0-44ed-a919-97fe71b66edc)

## 반정규화

## 이진트리
- preorder - root/left/right 전위 프리픽스 prefix
- inorder - left/root/right - 중위 infix
- postorder - left/right/root - 후위 postfix


## 정렬



FileDownloads:


| File Name | Link |
|-----------|------|
| 정보처리기사 필기, 1과목 소프트웨어 설계 무료공유.docx | [Link](https://github.com/aiegoo/infoSecProcessTest/blob/copilot/infoLic/summary/%EC%A0%95%EB%B3%B4%EC%B2%98%EB%A6%AC%EA%B8%B0%EC%82%AC%20%ED%95%84%EA%B8%B0,%201%EA%B3%BC%EB%AA%A9%20%EC%86%8C%ED%94%84%ED%8A%B8%EC%9B%A8%EC%96%B4%20%EC%84%A4%EA%B3%84%20%EB%AC%B4%EB%A3%8C%EA%B3%B5%EC%9C%A0.docx) |
| 정보처리기사 필기, 2과목 소프트웨어 개발 무료공유.docx | [Link](https://github.com/aiegoo/infoSecProcessTest/blob/copilot/infoLic/summary/%EC%A0%95%EB%B3%B4%EC%B2%98%EB%A6%AC%EA%B8%B0%EC%82%AC%20%ED%95%84%EA%B8%B0,%202%EA%B3%BC%EB%AA%A9%20%EC%86%8C%ED%94%84%ED%8A%B8%EC%9B%A8%EC%96%B4%20%EA%B0%9C%EB%B0%9C%20%EB%AC%B4%EB%A3%8C%EA%B3%B5%EC%9C%A0.docx) |
| 정보처리기사 필기, 3과목 데이터베이스 구축 무료공유.docx | [Link](https://github.com/aiegoo/infoSecProcessTest/blob/copilot/infoLic/summary/%EC%A0%95%EB%B3%B4%EC%B2%98%EB%A6%AC%EA%B8%B0%EC%82%AC%20%ED%95%84%EA%B8%B0,%203%EA%B3%BC%EB%AA%A9%20%EB%8D%B0%EC%9D%B4%ED%84%B0%EB%B2%A0%EC%9D%B4%EC%8A%A4%20%EA%B5%AC%EC%B6%95%20%EB%AC%B4%EB%A3%8C%EA%B3%B5%EC%9C%A0.docx) |
| 정보처리기사 필기, 4과목 프로그래밍 언어 활용 무료공유.docx | [Link](https://github.com/aiegoo/infoSecProcessTest/blob/copilot/infoLic/summary/%EC%A0%95%EB%B3%B4%EC%B2%98%EB%A6%AC%EA%B8%B0%EC%82%AC%20%ED%95%84%EA%B8%B0,%204%EA%B3%BC%EB%AA%A9%20%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%98%EB%B0%8D%20%EC%96%B8%EC%96%B4%20%ED%99%9C%EC%9A%A9%20%EB%AC%B4%EB%A3%8C%EA%B3%B5%EC%9C%A0.docx) |
| 정보처리기사 필기, 5과목 정보시스템 구축 관리 무료공유.docx | [Link](https://github.com/aiegoo/infoSecProcessTest/blob/copilot/infoLic/summary/%EC%A0%95%EB%B3%B4%EC%B2%98%EB%A6%AC%EA%B8%B0%EC%82%AC%20%ED%95%84%EA%B8%B0,%205%EA%B3%BC%EB%AA%A9%20%EC%A0%95%EB%B3%B4%EC%8B%9C%EC%8A%A4%ED%85%9C%20%EA%B5%AC%EC%B6%95%20%EA%B4%80%EB%A6%AC%20%EB%AC%B4%EB%A3%8C%EA%B3%B5%EC%9C%A0.docx) |
| 정보처리기사20210515(학생용).hwp | [Link](https://github.com/aiegoo/infoSecProcessTest/blob/copilot/infoLic/summary/%EC%A0%95%EB%B3%B4%EC%B2%98%EB%A6%AC%EA%B8%B0%EC%82%AC20210515(%ED%95%99%EC%83%9D%EC%9A%A9).hwp) |
| 정보처리기사20210515(해설집).hwp | [Link](https://github.com/aiegoo/infoSecProcessTest/blob/copilot/infoLic/summary/%EC%A0%95%EB%B3%B4%EC%B2%98%EB%A6%AC%EA%B8%B0%EC%82%AC20210515(%ED%95%B4%EC%84%A4%EC%A7%91).hwp) |
| 정보처리기사20210814(학생용).hwp | [Link](https://github.com/aiegoo/infoSecProcessTest/blob/copilot/infoLic/summary/%EC%A0%95%EB%B3%B4%EC%B2%98%EB%A6%AC%EA%B8%B0%EC%82%AC20210814(%ED%95%99%EC%83%9D%EC%9A%A9).hwp) |
| 정보처리기사20210814(해설집).hwp | [Link](https://github.com/aiegoo/infoSecProcessTest/blob/copilot/infoLic/summary/%EC%A0%95%EB%B3%B4%EC%B2%98%EB%A6%AC%EA%B8%B0%EC%82%AC20210814(%ED%95%B4%EC%84%A4%EC%A7%91).hwp) |
| 정보처리기사20220305(학생용).hwp | [Link](https://github.com/aiegoo/infoSecProcessTest/blob/copilot/infoLic/summary/%EC%A0%95%EB%B3%B4%EC%B2%98%EB%A6%AC%EA%B8%B0%EC%82%AC20220305(%ED%95%99%EC%83%9D%EC%9A%A9).hwp) |
| 정보처리기사20220305(해설집).hwp | [Link](https://github.com/aiegoo/infoSecProcessTest/blob/copilot/infoLic/summary/%EC%A0%95%EB%B3%B4%EC%B2%98%EB%A6%AC%EA%B8%B0%EC%82%AC20220305(%ED%95%B4%EC%84%A4%EC%A7%91).hwp) |
| 정보처리기사20220424(학생용).hwp | [Link](https://github.com/aiegoo/infoSecProcessTest/blob/copilot/infoLic/summary/%EC%A0%95%EB%B3%B4%EC%B2%98%EB%A6%AC%EA%B8%B0%EC%82%AC20220424(%ED%95%99%EC%83%9D%EC%9A%A9).hwp) |
| 정보처리기사20220424(해설집).hwp | [Link](https://github.com/aiegoo/infoSecProcessTest/blob/copilot/infoLic/summary/%EC%A0%95%EB%B3%B4%EC%B2%98%EB%A6%AC%EA%B8%B0%EC%82%AC20220424(%ED%95%B4%EC%84%A4%EC%A7%91).hwp) |
