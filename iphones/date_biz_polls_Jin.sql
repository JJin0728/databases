
CREATE TABLE Answer
(
  5점-매우만족   VARCHAR(200) NULL    ,
  4점-만족     VARCHAR(200) NULL    ,
  3점-보통     VARCHAR(200) NULL    ,
  2-불만족     VARCHAR(200) NULL    ,
  1점-매우 불만족 VARCHAR(200) NULL    ,
                         NOT NULL,
                         NOT NULL,
                         NOT NULL,
                         NOT NULL,
                         NOT NULL,
  PRIMARY KEY ()
);

CREATE TABLE 개인 결과값
(
  개인 Sum Uniqu ID INT NULL    ,
  개인 Sum          INT NULL    ,
  랭크 Uniqu ID     INT NOT NULL,
                      NOT NULL
);

CREATE TABLE 설문문항 4
(
  희망가격        VARCHAR(200) NULL    ,
  이름 Uniqu ID INT          NOT NULL,
                           NOT NULL,
  PRIMARY KEY ()
);

CREATE TABLE 설문문항1
(
  안정성         VARCHAR(200) NOT NULL,
  이름 Uniqu ID INT          NOT NULL,
                           NOT NULL,
  PRIMARY KEY ()
);

CREATE TABLE 설문문항2
(
  디자인         VARCHAR(200) NULL    ,
  이름 Uniqu ID INT          NOT NULL,
                           NOT NULL,
  PRIMARY KEY ()
);

CREATE TABLE 설문문항3
(
  승차감(쿠션성)    VARCHAR(200) NULL    ,
  이름 Uniqu ID INT          NOT NULL,
                           NOT NULL,
  PRIMARY KEY ()
);

CREATE TABLE 설문자 정보
(
  이름 Uniqu ID INT NOT NULL,
  PRIMARY KEY (이름 Uniqu ID)
);

CREATE TABLE 항목 결과값
(
  항목별 Avg         INT NULL    ,
  항목별Avg Uniqu ID INT NULL    ,
                      NOT NULL
);

ALTER TABLE 설문문항1
  ADD CONSTRAINT FK_설문자 정보_TO_설문문항1
    FOREIGN KEY (이름 Uniqu ID)
    REFERENCES 설문자 정보 (이름 Uniqu ID);

ALTER TABLE 설문문항2
  ADD CONSTRAINT FK_설문자 정보_TO_설문문항2
    FOREIGN KEY (이름 Uniqu ID)
    REFERENCES 설문자 정보 (이름 Uniqu ID);

ALTER TABLE 설문문항3
  ADD CONSTRAINT FK_설문자 정보_TO_설문문항3
    FOREIGN KEY (이름 Uniqu ID)
    REFERENCES 설문자 정보 (이름 Uniqu ID);

ALTER TABLE 설문문항 4
  ADD CONSTRAINT FK_설문자 정보_TO_설문문항 4
    FOREIGN KEY (이름 Uniqu ID)
    REFERENCES 설문자 정보 (이름 Uniqu ID);

ALTER TABLE Answer
  ADD CONSTRAINT FK_설문문항1_TO_Answer
    FOREIGN KEY ()
    REFERENCES 설문문항1 ();

ALTER TABLE Answer
  ADD CONSTRAINT FK_설문문항2_TO_Answer
    FOREIGN KEY ()
    REFERENCES 설문문항2 ();

ALTER TABLE Answer
  ADD CONSTRAINT FK_설문문항3_TO_Answer
    FOREIGN KEY ()
    REFERENCES 설문문항3 ();

ALTER TABLE Answer
  ADD CONSTRAINT FK_설문문항 4_TO_Answer
    FOREIGN KEY ()
    REFERENCES 설문문항 4 ();

ALTER TABLE 항목 결과값
  ADD CONSTRAINT FK_Answer_TO_항목 결과값
    FOREIGN KEY ()
    REFERENCES Answer ();

ALTER TABLE 개인 결과값
  ADD CONSTRAINT FK_Answer_TO_개인 결과값
    FOREIGN KEY ()
    REFERENCES Answer ();
