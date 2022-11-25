CREATE TABLE IM_ORDERS(
CATEGORY_NAME VARCHAR2(30),
STATUS VARCHAR2(20),
ORDER_ID NUMBER PRIMARY KEY
);

INSERT INTO IM_ORDERS VALUES('CPU','Canceled',67);
INSERT INTO IM_ORDERS VALUES('Video Card','Pending',68);
INSERT INTO IM_ORDERS VALUES('CPU','Canceled',69);
INSERT INTO IM_ORDERS VALUES('CPU','Shipped',74);
INSERT INTO IM_ORDERS VALUES('Mother Board','Shipped',75);
INSERT INTO IM_ORDERS VALUES('Video Card','Shipped',76);
INSERT INTO IM_ORDERS VALUES('Video Card','Pending',78);
INSERT INTO IM_ORDERS VALUES('Storage','Shipped',82);
INSERT INTO IM_ORDERS VALUES('Storage','Shipped',89);
INSERT INTO IM_ORDERS VALUES('Storage','Pending',91);


SELECT * FROM IM_ORDERS
PIVOT(
    COUNT(ORDER_ID) 
    FOR CATEGORY_NAME
    IN ( 
        'CPU',
        'Video Card',
        'Mother Board',
        'Storage'
    )
)
ORDER BY STATUS;