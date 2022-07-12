/* Question 7 */
SELECT DISTINCT title_ID, title FROM dvds WHERE SUBSTR(title, 1, 1) BETWEEN 'A' AND 'M' ORDER BY title;

/* Question 8 */
SELECT DISTINCT title AS "TITLE_NAME", REGEXP_COUNT(title, 'A') AS "NUMBER_COPY" FROM dvds WHERE REGEXP_COUNT(title, 'A')>=2 ORDER BY REGEXP_COUNT(title, 'A');

/* Question 9 */
SELECT member_ID, first_name, last_name FROM members WHERE MOD(member_ID, 2)=1 ORDER BY last_name;

/* Question 10 */
SELECT member_ID, first_name, last_name, street, TO_CHAR(valid_date, 'DD-MON-YY') AS "VALID_DATE" from members
  WHERE street NOT LIKE '%STREET' AND street NOT LIKE '%LANE' AND
  TO_CHAR(valid_date, 'DD-MON-YY') NOT LIKE '%FEB%' AND TO_CHAR(valid_date, 'DD-MON-YY') NOT LIKE '%APR%' AND TO_CHAR(valid_date, 'DD-MON-YY') NOT LIKE '%JUN%'
  ORDER BY last_name DESC;