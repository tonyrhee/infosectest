-- ���̺� ����Ʈ
-- $$$$$$$$$$$$$$$$
-- DROP TABLE �л�;
CREATE TABLE �л�(
    �й�      VARCHAR2(100),
    �̸�      VARCHAR2(100),
    �г�      NUMBER,
    �������� VARCHAR2(100),
    ����      NUMBER,
    ����ó    VARCHAR(100)
);

INSERT INTO �л�
VALUES ('1000', '������', 1,'�˰���',90,'010-1111-2222'); 
INSERT INTO �л�
VALUES ('2000', '������', 2,'�����ͺ��̽�',95,'010-2222-2222');
INSERT INTO �л�
VALUES ('3000', 'ȫ�浿', 3,'�������',90,'010-3333-3333');
INSERT INTO �л�
VALUES ('4000', '����', 4,'�ü��',95,'010-4444-4444');

-- $$$$$$$$$$$$$$$$
-- DROP TABLE STUDENT;
CREATE TABLE STUDENT(
    STID VARCHAR2(100),
    NAME VARCHAR2(100),
    SCORE VARCHAR2(100),
    DEPTID VARCHAR2(100)
);
INSERT INTO STUDENT
VALUES ('1000', '������', 90,1);
INSERT INTO STUDENT
VALUES ('2000', '������', '95','2');
INSERT INTO STUDENT
VALUES ('3000', 'ȫ�浿','90','3');
INSERT INTO STUDENT
VALUES ('4000', '����', '95','4');
-- $$$$$$$$$$$$$$$$
-- DROP TABLE SOO;
CREATE TABLE SOO(
    NAME VARCHAR2(100)
);
INSERT INTO SOO
VALUES ('SOPHIA');
INSERT INTO SOO
VALUES ('OLIVIA');
INSERT INTO SOO
VALUES ('SEMA');

-- DROP TABLE JEBI;
CREATE TABLE JEBI(
    RULE VARCHAR2(100)
);
INSERT INTO JEBI
VALUES ('S%');
INSERT INTO JEBI
VALUES ('%A%');
-- $$$$$$$$$$$$$$$$

-- DROP TABLE ����;
CREATE TABLE ����(
    �����ڵ� VARCHAR2(100),
    �����̸� VARCHAR2(100),
    ���� VARCHAR2(100),
    ���� NUMBER
);

INSERT INTO ����
VALUES ('1000', '��ǻ�Ͱ���',' A+',95);
INSERT INTO ����
VALUES ('2000', '�ü��',' B+',85);
INSERT INTO ����
VALUES ('1000', '��ǻ�Ͱ���',' B+',85);
INSERT INTO ����
VALUES ('2000', '�ü��',' B',80);
-- $$$$$$$$$$$$$$$$

-- DROP TABLE �л�;
CREATE TABLE �л�(
    �а� VARCHAR2(100),
    �л� VARCHAR2(100)
);

INSERT INTO �л�
VALUES ('����', '�̼���');
INSERT INTO �л�
VALUES ('����', '�̺�â');
INSERT INTO �л�
VALUES ('����', '�����');
INSERT INTO �л�
VALUES ('��ǻ��', '���߱�');
INSERT INTO �л�
VALUES ('��ǻ��', '������');
-- $$$$$$$$$$$$$$$$
-- DROP TABLE �޿�;
CREATE TABLE �޿�(
    �̸� VARCHAR2(100),
    �μ� VARCHAR2(100),
    �޿� NUMBER
);

INSERT INTO �޿�
VALUES('��ö��','������',5000);
INSERT INTO �޿�
VALUES('����','������',4000);
INSERT INTO �޿�
VALUES('ȫ�浿','����',3000);
INSERT INTO �޿�
VALUES('������','����',2000);;
-- $$$$$$$$$$$$$$$$
-- DROP TABLE ����;
CREATE TABLE ����(
    å��ȣ VARCHAR2(100),
    å�� VARCHAR2(100)
);

INSERT INTO ����
VALUES ('111','�ü��');
INSERT INTO ����
VALUES ('222','�ڷᱸ��');
INSERT INTO ����
VALUES ('555','��ǻ�ͱ���');

-- DROP TABLE ��������;
CREATE TABLE ��������(
    å��ȣ VARCHAR2(100),
    ���� NUMBER
);

INSERT INTO ��������
VALUES ('111','20000');
INSERT INTO ��������
VALUES ('222','25000');
INSERT INTO ��������
VALUES ('333','10000');
INSERT INTO ��������
VALUES ('444','15000');
-- $$$$$$$$$$$$$$$$

-- DROP TABLE ���;
CREATE TABLE ���(
    �̸� VARCHAR2(100),
    ���� VARCHAR2(100)
);

INSERT INTO ���
VALUES ('����','3000');
INSERT INTO ���
VALUES ('�Ӳ���','2500');
INSERT INTO ���
VALUES ('ȫ�浿','2200');
INSERT INTO ���
VALUES ('��ö��','2000');
INSERT INTO ���
VALUES ('��','30000');
-- ###################################################

-- ����ó����� ���� 2020�� 2ȸ
-- �л� ���̺��� 3,4�г��� �й�, �̸��� ��ȸ�Ѵ�.
-- IN �����ڸ� ����ؾ� �Ѵ�.
SELECT �й�, �̸�
  FROM  �л�
 WHERE �г� IN (3,4);

-- ���̺� Į�� ���� �ϱ�
ALTER TABLE �л� DROP COLUMN ����ó;

-- ����ó����� ���� 2020�� 2ȸ
-- STUDENT ���̺��� NAME �Ӽ��� IDX_NAME �̸����� �ε����� �����ϴ� SQL ���� �ۼ��Ͻÿ�.
CREATE INDEX IDX_NAME ON STUDENT(NAME);

-- ����ó����� 21�� 3ȸ : ���� ������ ����ÿ� ������� �ۼ��Ͻÿ�.
-- SELECT COUNT(*) CNT FROM SOO CROSS JOIN JEBI
-- WHERE SOO.NAME LIKE JEBI.RULE;
SELECT*FROM SOO;
SELECT*FROM JEBI;

SELECT COUNT(NAME) CNT FROM SOO;
-- 3
SELECT COUNT(RULE) RULE FROM JEBI;
-- 2

SELECT COUNT(*) CNT 
  FROM SOO CROSS JOIN JEBI
 WHERE SOO.NAME LIKE JEBI.RULE;
-- 5

SELECT COUNT(*) FROM SOO CROSS JOIN JEBI;
-- 6
-- 2 * 3

-- ����ó����� 20�� 3ȸ
-- ���� ������ ����� 90�̻��� �����̸�, �ּ�����, �ִ������� ���ϴ� SQL ���� �ۼ��Ͻÿ�.
-- ��ҹ��� ���� x, WHERE ��� ����, GROUP BY, HAVING ���� �� ����, ��Ī ���, ����Ŭ�� ��������
SELECT*FROM ����;

SELECT �����̸�,
          MIN(����) AS �ּ�����, 
          MAX(����) AS �ִ�����
  FROM ����
GROUP BY �����̸�
HAVING AVG(����)>=90; 

-- ����ó����� 20�� 4ȸ ����
-- �а����� Ʃ�� ���� �������� ���ϴ� SQL ���� �ۼ��Ͻÿ�.
-- ��ҹ��� ���� X, WHERE ���� ������, GROUP BY ���, ����Ŭ�� ���� ����, ��Ī(AS) ���, ���� �Լ� ���

SELECT �а�, COUNT(�л�) AS �а���Ʃ�ü�
  FROM �л�
GROUP BY �а�
ORDER BY �а���Ʃ�ü� ASC, �а� DESC;

-- �ܿ� ���չ���
-- �޿� ���̺��� �μ��� �޿� �հ谡 6000�̻��� �μ�, �޿��հ踦 ����ϴ� SQL���� �ۼ��ϼ���
-- �޿� �հ�� �޿� Į���� ������ ���̸� AS�� ����Ͽ� �޿��հ�� ���

SELECT*FROM �޿�;

SELECT �μ�, SUM(�޿�) AS �޿��հ�
  FROM �޿�
 GROUP BY �μ�
HAVING SUM(�޿�) > 6000;


-- ���� ���̺�� ���� ���� ���̺��� ���� �ܺ� ����(Full Outer Join)�ϴ� SQL���� �ۼ��Ͻÿ�.
-- FROM ������ ������ A, ���������� B�� ��Ī�� ��
-- ���� ���̺��� å��ȣ�� �������� ���̺��� å��ȣ�� ON ������ ���� �������� ���

SELECT A.å��ȣ, A.å��, B.å��ȣ, B.����
  FROM ���� A FULL OUTER JOIN �������� B
    ON A.å��ȣ=B.å��ȣ;

-- ���� ���̺�� �������� ���̺��� �Ʒ��� �����ϴ� SQL ���� �ۼ��Ͻÿ�.
-- WHERE ������ IN �����ڸ� ����Ͽ� IN �������� ���ǿ� ���������� ���
-- å���� �ڷᱸ���� ���� �߿� ���� ��� ���� �������� ���̺��� ����������

SELECT ����
  FROM   ��������
 WHERE å��ȣ=(SELECT å��ȣ FROM ���� WHERE å�� IN ('�ڷᱸ��'));

-- �����Լ��� ����ϴ� SQL ���� �ۼ��Ͻÿ�
-- RANK �Լ��� �̿��Ͽ� ������ ���� ������ ���� ������ ������

SELECT*FROM ���;

SELECT �̸�
        ,  ����
        ,  RANK() OVER(ORDER BY ���� DESC) AS ����
  FROM ��� ;






