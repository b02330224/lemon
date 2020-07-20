

-------------------------------------------------------------------------------
--  disk member
-------------------------------------------------------------------------------
CREATE TABLE DISK_MEMBER(
    ID BIGINT NOT NULL,
    CATALOG VARCHAR(50),
    TYPE VARCHAR(50),
    NAME VARCHAR(200),
    MASK INT,
    DESCRIPTION VARCHAR(255),
    USER_ID VARCHAR(64),
    CREATOR VARCHAR(64),
    CREATE_TIME DATETIME,
    EXPIRE_TIME DATETIME,
    STATUS VARCHAR(50),
    PRIORITY INT,
    SPACE_ID BIGINT,
    SHARE_ID BIGINT,
    CONSTRAINT PK_DISK_MEMBER PRIMARY KEY(ID),
    CONSTRAINT FK_DISK_MEMBER_SPACE FOREIGN KEY (SPACE_ID) REFERENCES DISK_SPACE(ID),
    CONSTRAINT FK_DISK_MEMBER_SHARE FOREIGN KEY (SHARE_ID) REFERENCES DISK_SHARE(ID)
) ENGINE=INNODB CHARSET=UTF8;

