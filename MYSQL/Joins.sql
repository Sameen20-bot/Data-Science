USE intro_sql;

CREATE TABLE customers(
    customer_id INT NOT NULL,
    customer_name VARCHAR(100),
    contact_name VARCHAR(100),
    address VARCHAR(100),
    city VARCHAR(100),
    postal_code VARCHAR(10),
    country VARCHAR(20),
    PRIMARY KEY (customer_id)
);

CREATE TABLE orders(
    order_id int NOT NULL,
    customer_id INT,
    order_date DATETIME,
    shipping_id INT,
    PRIMARY KEY (order_id)
);

INSERT INTO customers (customer_id, customer_name, contact_name, address, city, postal_code, country) VALUES
(1, 'Al-Karam Textiles', 'Ahmed Raza', 'SITE Area, Plot 24', 'Karachi', '75700', 'Pakistan'),
(2, 'Gourmet Foods', 'Fatima Khan', 'Main Boulevard, Gulberg', 'Lahore', '54000', 'Pakistan'),
(3, 'TechHub Solutions', 'Bilal Ansari', 'Blue Area, Office 12', 'Islamabad', '44000', 'Pakistan'),
(4, 'Shaheen Traders', 'Zoraiz Arsalan', 'University Road 88', 'Peshawar', '25000', 'Pakistan'),
(5, 'Mehran Enterprises', 'Sana Siddiqui', 'Clifton Block 5', 'Karachi', '75600', 'Pakistan'),
(6, 'Royal Fabrics', 'Usman Ghani', 'Faisal Town, Street 9', 'Faisalabad', '38000', 'Pakistan'),
(7, 'Pak Agro Supplies', 'Hira Malik', 'Satellite Town', 'Rawalpindi', '46000', 'Pakistan'),
(8, 'Indus Logistics', 'Kamran Shah', 'Airport Road 15', 'Multan', '60000', 'Pakistan'),
(9, 'Bolan Hardware', 'Ayesha Noor', 'Jinnah Road 42', 'Quetta', '87300', 'Pakistan'),
(10, 'Sunrise Electronics', 'Danish Iqbal', 'Saddar Bazaar', 'Hyderabad', '71000', 'Pakistan');

INSERT INTO orders(order_id, customer_id, order_date, shipping_id) VALUES
(101, 1, '2026-01-15 10:30:00', 501),
(102, 3, '2026-01-22 14:45:00', 502),
(103, 2, '2026-02-05 09:15:00', 503),
(104, 5, '2026-02-18 16:20:00', 504),
(105, 1, '2026-03-02 11:00:00', 505),
(106, 7, '2026-03-14 13:35:00', 506),
(107, 4, '2026-04-09 08:50:00', 507),
(108, 9, '2026-04-25 15:10:00', 508),
(109, 3, '2026-05-11 12:25:00', 509),
(110, 6, '2026-05-30 17:40:00', 510);

select * from customers;

select * from orders;

SELECT C.CONTACT_NAME, O.ORDER_ID  FROM CUSTOMERS C LEFT JOIN ORDERS O ON C.CUSTOMER_ID = O.CUSTOMER_ID;

SELECT C.CONTACT_NAME, O.ORDER_ID  FROM CUSTOMERS C RIGHT JOIN ORDERS O ON C.CUSTOMER_ID = O.CUSTOMER_ID;

SELECT C.CONTACT_NAME, O.ORDER_ID  FROM CUSTOMERS C INNER JOIN ORDERS O ON C.CUSTOMER_ID = O.CUSTOMER_ID;

SELECT C.CONTACT_NAME, O.ORDER_ID  FROM CUSTOMERS C LEFT OUTER JOIN ORDERS O ON C.CUSTOMER_ID = O.CUSTOMER_ID;
UNION
SELECT C.CONTACT_NAME, O.ORDER_ID  FROM CUSTOMERS C RIGHT OUTER JOIN ORDERS O ON C.CUSTOMER_ID = O.CUSTOMER_ID;