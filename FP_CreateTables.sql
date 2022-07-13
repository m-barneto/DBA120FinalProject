DROP TABLE members CASCADE CONSTRAINTS;
DROP TABLE dvds CASCADE CONSTRAINTS;
DROP TABLE rentals CASCADE CONSTRAINTS;
DROP TABLE reservations CASCADE CONSTRAINTS;

CREATE TABLE members(
    member_ID NUMBER(4,0) NOT NULL,
    first_name VARCHAR2(25) NOT NULL,
    last_name VARCHAR2(25) NOT NULL,
    street VARCHAR2(25) NOT NULL,
    city VARCHAR(15) NOT NULL,
    phone VARCHAR2(11) NOT NULL,
    valid_date DATE NOT NULL,
    balance NUMBER NOT NULL,
    PRIMARY KEY(member_ID)
);

CREATE TABLE dvds(
    dvd_ID NUMBER(4,0) NOT NULL,
    title_ID NUMBER(3,0) NOT NULL,
    title VARCHAR2(20) NOT NULL,
    status VARCHAR2(10) NOT NULL,
    PRIMARY KEY(dvd_ID)
);

CREATE TABLE rentals(
    checkout_date DATE NOT NULL,
    dvd_ID NUMBER(4,0) NOT NULL REFERENCES dvds(dvd_ID),
    member_ID NUMBER(4,0) NOT NULL REFERENCES members(member_ID),
    checkin_date DATE,
    expired_date DATE NOT NULL,
    PRIMARY KEY(checkout_date, dvd_ID)
);

CREATE TABLE reservations(
    reserve_date DATE NOT NULL,
    member_ID NUMBER(4,0) NOT NULL REFERENCES members(member_ID),
    title_ID NUMBER(3,0) NOT NULL REFERENCES dvds(title_ID),
    PRIMARY KEY(reserve_date, member_ID)
);

