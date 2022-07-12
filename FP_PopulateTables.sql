BEGIN
  EXECUTE IMMEDIATE 'DROP SEQUENCE member_seq';
EXCEPTION
  WHEN OTHERS THEN NULL;
END;
/
CREATE SEQUENCE member_seq
 START WITH 110
 INCREMENT BY 1
 MAXVALUE 999
 MINVALUE 110
 NOCYCLE
 CACHE 50;

TRUNCATE TABLE members;
INSERT INTO members
  VALUES (member_seq.nextval, 'JACK', 'WHITE', '123 MAIN ROAD', 'RALEIGH', '919-7763838', TO_DATE('01-JAN-99', 'DD-MON-YY'), 0);
INSERT INTO members
  VALUES (member_seq.nextval, 'JACK', 'BLACK', '123 CAP ROAD', 'RALEIGH', '919-7762843', TO_DATE('01-FEB-99', 'DD-MON-YY'), 0);
INSERT INTO members
  VALUES (member_seq.nextval, 'JACK', 'BLUE', '123 CREE ROAD', 'RALEIGH', '919-7763124', TO_DATE('01-MAR-99', 'DD-MON-YY'), 0);
INSERT INTO members
  VALUES (member_seq.nextval, 'JACK', 'BROWN', '123 CROWN ROAD', 'RALEIGH', '919-7761111', TO_DATE('01-APR-99', 'DD-MON-YY'), 0);
INSERT INTO members
  VALUES (member_seq.nextval, 'JACK', 'RED', '123 LYNN ROAD', 'RALEIGH', '919-7762222', TO_DATE('01-MAY-99', 'DD-MON-YY'), 0);
INSERT INTO members
  VALUES (member_seq.nextval, 'JACK', 'INDY', '123 RAY ROAD', 'RALEIGH', '919-7763333', TO_DATE('01-JUN-99', 'DD-MON-YY'), 0);
INSERT INTO members
  VALUES (member_seq.nextval, 'JACK', 'CRIMSON', '123 JAY ROAD', 'RALEIGH', '919-7764444', TO_DATE('01-JUL-99', 'DD-MON-YY'), 0);
INSERT INTO members
  VALUES (member_seq.nextval, 'JACK', 'CRYON', '123 NICE LANE', 'RALEIGH', '919-7765555', TO_DATE('01-AUG-99', 'DD-MON-YY'), 0);
INSERT INTO members
  VALUES (member_seq.nextval, 'JACK', 'GRAY', '123 JONE ROAD', 'RALEIGH', '919-7766666', TO_DATE('01-SEP-99', 'DD-MON-YY'), 0);


BEGIN
  EXECUTE IMMEDIATE 'DROP SEQUENCE dvd_seq';
EXCEPTION
  WHEN OTHERS THEN NULL;
END;
/
CREATE SEQUENCE dvd_seq
 START WITH 1000
 INCREMENT BY 1
 MAXVALUE 9999
 MINVALUE 1000
 NOCYCLE
 CACHE 50;

TRUNCATE TABLE dvds;
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 10, 'DANCE WITH WOLF', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 10, 'DANCE WITH WOLF', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 11, 'THE PERFECT STORM', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 11, 'THE PERFECT STORM', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 12, 'CHICKEN RUN', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 13, 'THE BUG''s LIFE', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 13, 'THE BUG''s LIFE', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 14, 'SNOW WHITE', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 14, 'SNOW WHITE', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 15, 'TOY STORY I', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 16, 'TOY STORY II', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 17, 'LOVE STORY', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 18, 'AIR FORCE ONE', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 18, 'AIR FORCE ONE', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 19, 'AWAY FROM AFRICA', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 20, 'FRIDAY 13TH', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 21, 'SILENT LAMB', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 22, 'SHAN HI MOON', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 22, 'SHAN HI MOON', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 23, 'THE GOLDEN POND', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 23, 'THE GOLDEN POND', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 24, 'POKIMON I', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 25, 'POKIMON II', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 25, 'POKIMON II', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 26, 'SLEEPY BEAUTY', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 26, 'SLEEPY BEAUTY', 'IN STORE');
 /* SHOULD BE TITLE_ID 15? */
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 27, 'TOY STORY I', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 28, 'THE MELODY', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 29, 'LOVE STORY II', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 30, 'CINDERALA', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 30, 'CINDERALA', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 31, 'THE GIRASIC PARK', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 32, 'BACK TO GIRASIC PARK', 'IN STORE');
INSERT INTO dvds
  VALUES (dvd_seq.nextval, 33, 'THE GARZELA', 'IN STORE');