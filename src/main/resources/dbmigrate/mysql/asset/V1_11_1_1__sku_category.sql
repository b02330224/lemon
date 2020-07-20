

-------------------------------------------------------------------------------
--  sku category
-------------------------------------------------------------------------------
CREATE TABLE SKU_CATEGORY(
    ID BIGINT NOT NULL,

    CODE VARCHAR(100),
    NAME VARCHAR(100),

    PRODUCT_CATEGORY VARCHAR(100),
    PURPOSE VARCHAR(100),
    PRODUCT_NAME VARCHAR(200),
    PRODUCT_MODEL VARCHAR(50),
    PRODUCT_PRICE INT,
    PRODUCT_NUM INT,
    DESCRIPTION VARCHAR(200),
    TENANT_ID VARCHAR(64),
    PARENT_ID BIGINT,

    CONSTRAINT PK_SKU_CATEGORY PRIMARY KEY(ID),
    CONSTRAINT FK_SKU_CATEGORY_PARENT FOREIGN KEY(PARENT_ID) REFERENCES SKU_CATEGORY(ID)
) ENGINE=INNODB CHARSET=UTF8;




