
CREATE TABLE 결과
(
  개인_sum        NULL    ,
  문항별_sum       NULL    ,
  Unique ID     NOT NULL,
  답변 Unique Id  NOT NULL,
  문항            NOT NULL
);

CREATE TABLE 답변 공통 코드
(
  답변 Unique Id  NOT NULL,
  답변            NULL    ,
  PRIMARY KEY (답변 Unique Id)
);

CREATE TABLE 자동차 설문조사
(
  Unique ID  NOT NULL,
  이름         NULL    ,
  PRIMARY KEY (Unique ID)
);

CREATE TABLE 자동차 설문조사 답변
(
  Unique ID     NOT NULL,
  답변 Unique Id  NOT NULL,
  문항            NOT NULL
);

CREATE TABLE 자동차 설문조사 문항
(
  Unique ID  NOT NULL,
  문항         NOT NULL,
  PRIMARY KEY (문항)
);

ALTER TABLE 자동차 설문조사 문항
  ADD CONSTRAINT FK_자동차 설문조사_TO_자동차 설문조사 문항
    FOREIGN KEY (Unique ID)
    REFERENCES 자동차 설문조사 (Unique ID);

ALTER TABLE 자동차 설문조사 답변
  ADD CONSTRAINT FK_자동차 설문조사_TO_자동차 설문조사 답변
    FOREIGN KEY (Unique ID)
    REFERENCES 자동차 설문조사 (Unique ID);

ALTER TABLE 자동차 설문조사 답변
  ADD CONSTRAINT FK_답변 공통 코드_TO_자동차 설문조사 답변
    FOREIGN KEY (답변 Unique Id)
    REFERENCES 답변 공통 코드 (답변 Unique Id);

ALTER TABLE 결과
  ADD CONSTRAINT FK_자동차 설문조사_TO_결과
    FOREIGN KEY (Unique ID)
    REFERENCES 자동차 설문조사 (Unique ID);

ALTER TABLE 결과
  ADD CONSTRAINT FK_자동차 설문조사 답변_TO_결과
    FOREIGN KEY (답변 Unique Id)
    REFERENCES 자동차 설문조사 답변 (답변 Unique Id);

ALTER TABLE 자동차 설문조사 답변
  ADD CONSTRAINT FK_자동차 설문조사 문항_TO_자동차 설문조사 답변
    FOREIGN KEY (문항)
    REFERENCES 자동차 설문조사 문항 (문항);

ALTER TABLE 결과
  ADD CONSTRAINT FK_자동차 설문조사 문항_TO_결과
    FOREIGN KEY (문항)
    REFERENCES 자동차 설문조사 문항 (문항);
