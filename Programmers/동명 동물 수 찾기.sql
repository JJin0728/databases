동명 동물 수 찾기
https://school.programmers.co.kr/learn/courses/30/lessons/59041
SELECT A.NAME, A.COUNT FROM
(
    SELECT NAME, COUNT(NAME) COUNT FROM ANIMAL_INS
    WHERE NAME IS NOT NULL
    GROUP BY NAME
) A
WHERE A.COUNT > 1
ORDER BY NAME;
;