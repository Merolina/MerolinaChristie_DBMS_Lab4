 CREATE TABLE if NOT EXISTS customer(
 	CUS_ID INT AUTO_INCREMENT ,
 	CUS_NAME VARCHAR(20) NOT NULL,
 	CUS_PHONE VARCHAR(10) NULL,
 	CUS_CITY VARCHAR(30) NOT NULL,
 	CUS_GENDER CHAR,
    PRIMARY KEY(CUS_ID)
    );