DROP TABLE men;

CREATE TABLE men (
    id VARCHAR(255) PRIMARY KEY,
    name VARCHAR2(20) NOT NULL,
    age NUMBER(3) NOT NULL,
    job VARCHAR(50) NOT NULL,
    salary NUMBER(15) NOT NULL,
    grade VARCHAR2(20) NOT NULL,
    count NUMBER(1) DEFAULT 3 NULL,
    partner_id VARCHAR2(20) DEFAULT null,
    manager_num NUMBER(3)
);

CREATE SEQUENCE men_seq
    NOCACHE;

DROP TABLE women;

CREATE TABLE women (
    id VARCHAR(255) PRIMARY KEY,
    name VARCHAR2(20) NOT NULL,
    age NUMBER(3) NOT NULL,
    job VARCHAR(50) NOT NULL,
    salary NUMBER(15) NOT NULL,
    grade VARCHAR2(20) NOT NULL,
    count NUMBER(1) DEFAULT 3 NULL,
    partner_id VARCHAR2(20) DEFAULT null,
    manager_num NUMBER(3)
);

CREATE SEQUENCE women_seq
    NOCACHE;

DROP TABLE matching;

CREATE TABLE matching (
    match_num NUMBER PRIMARY KEY,
    men_id VARCHAR(255) UNIQUE NOT NULL,
    women_id VARCHAR(255) UNIQUE NOT NULL,
    manager_num NUMBER NOT NULL
);

CREATE SEQUENCE matching_seq
    NOCACHE;

DROP TABLE manager;

CREATE TABLE manager (
    manager_num NUMBER PRIMARY KEY,
    name VARCHAR2(20) NOT NULL,
    performance NUMBER NULL
);
DROP SEQUENCE manager_seq;
CREATE SEQUENCE manager_seq
    NOCACHE;

--ALTER TABLE men ADD FOREIGN KEY(partner_id) REFERENCES matching(women_id);
--
--ALTER TABLE women ADD FOREIGN KEY(partner_id) REFERENCES matching(men_id);
--
--ALTER TABLE matching ADD FOREIGN KEY(men_id) REFERENCES men(id);
--
--ALTER TABLE matching ADD FOREIGN KEY(women_id) REFERENCES women(id);
--
--ALTER TABLE matching ADD FOREIGN KEY(manager_num) REFERENCES manager(manager_num);

INSERT INTO men
(id, name, age, job, salary, grade, count)
VALUES (
    'A-001',
    '��ö��',
    28,
    '������',
    60000000,
    '���',
    3);
    
INSERT INTO men
(id, name, age, job, salary, grade, count)
VALUES (
    'A-002',
    'ȫ�浿',
    30,
    '����',
    0,
    '���',
    3);
INSERT INTO men
(id, name, age, job, salary, grade, count)
VALUES (
    'A-003',
    '�����',
    30,
    '�л�',
    0,
    '�����',
    3);
INSERT INTO men
(id, name, age, job, salary, grade, count)
VALUES (
    'A-004',
    '�ڼ���',
    27,
    '�౸����',
    30000000,
    '���',
    3);
INSERT INTO men
(id, name, age, job, salary, grade, count)
VALUES (
    'A-005',
    '������',
    30,
    'CEO',
    1000000000,
    '���̾�',
    3);
INSERT INTO women
(id, name, age, job, salary, grade, count)
VALUES (
    'B-001',
    '�迵��',
    30,
    '�繫��',
    50000000,
    '���',
    3);
INSERT INTO women
(id, name, age, job, salary, grade, count)
VALUES (
    'B-002',
    '���ǻ�',
    33,
    '�ǻ�',
    80000000,
    '���̾�',
    3);
INSERT INTO women
(id, name, age, job, salary, grade, count)
VALUES (
    'B-003',
    '������',
    28,
    '����',
    4000000,
    '���',
    3);
INSERT INTO women
(id, name, age, job, salary, grade, count)
VALUES (
    'B-004',
    '������',
    25,
    '���',
    30000000,
    '���',
    3);
INSERT INTO women
(id, name, age, job, salary, grade, count)
VALUES (
    'B-005',
    '�̳���',
    28,
    '������',
    40000000,
    '���',
    3);

INSERT INTO manager
VALUES (1, '����', 3);
INSERT INTO manager
VALUES (2, '������', 2);
INSERT INTO manager
VALUES (3, '������', 3);