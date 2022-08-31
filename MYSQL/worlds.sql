
CREATE TABLE City_me
(
  Name        VARCHAR(200) NULL     COMMENT '이름',
  District    VARCHAR(200) NULL     COMMENT '지역',
  Population  INT          NULL     COMMENT '인구',
  ID          INT          NULL     COMMENT '아이디',
  Code        VARCHAR(200) NOT NULL COMMENT '코드',
  CountryCode VARCHAR(200) NOT NULL COMMENT '국가 코드'
) COMMENT '도시';

CREATE TABLE Country
(
  Code            VARCHAR(200) NOT NULL COMMENT '코드',
  Name            VARCHAR(200) NULL     COMMENT '이름',
  Continent       ENUM         NULL     COMMENT '대륙',
  Region          VARCHAR(200) NULL     COMMENT '지방',
  SufaceArea      DECIMAL      NULL     COMMENT '면적율',
  IndepYear       SMALLINT     NULL     COMMENT '독립연도',
  Population      INT          NULL     COMMENT '인구',
  LifeExpectancy  DECIMAL      NULL     COMMENT '기대수명',
  GNP             DECIMAL      NULL     COMMENT '국민총생산',
  GNPOld          DECIMAL      NULL     COMMENT '과거 국민총생산',
  LocalName       VARCHAR(200) NULL     COMMENT '지역명',
  GovernmmentFrom VARCHAR(200) NULL     COMMENT '정부타입',
  HeadOfState     VARCHAR(200) NULL     COMMENT '국가 원수',
  Capital         IN           NULL     COMMENT '수도',
  Code2           VARCHAR(200) NULL     COMMENT '코드2',
  CountryCode     VARCHAR(200) NOT NULL COMMENT '국가 코드',
  PRIMARY KEY (CountryCode)
) COMMENT '나라';

CREATE TABLE CountryLangeage_me
(
  CountryCode VARCHAR(200) NULL     COMMENT '국가코드',
  Language    VARCHAR(200) NULL     COMMENT '언어',
  IsOffical   ENUM         NULL     COMMENT '공용어 여부',
  Percentage  DECIMAL      NULL     COMMENT '백분율',
  Code        VARCHAR(200) NOT NULL COMMENT '코드',
  CountryCode VARCHAR(200) NOT NULL COMMENT '국가 코드'
) COMMENT '언어';

ALTER TABLE City_me
  ADD CONSTRAINT FK_Country_TO_City_me
    FOREIGN KEY (CountryCode)
    REFERENCES Country (CountryCode);

ALTER TABLE CountryLangeage_me
  ADD CONSTRAINT FK_Country_TO_CountryLangeage_me
    FOREIGN KEY (CountryCode)
    REFERENCES Country (CountryCode);
