CREATE TABLE customer (
    customer_id    NUMBER(5)      NOT NULL,
    full_name      VARCHAR2(60)   NOT NULL,
    email          VARCHAR2(80)   NOT NULL,
    phone          VARCHAR2(10)   NOT NULL,
    city           VARCHAR2(30)   NOT NULL,
    registered_on  DATE           DEFAULT SYSDATE NOT NULL,
    CONSTRAINT pk_customer       PRIMARY KEY (customer_id),
    CONSTRAINT uq_customer_email UNIQUE (email),
    CONSTRAINT uq_customer_phone UNIQUE (phone),
    CONSTRAINT ck_customer_phone CHECK (LENGTH(phone) = 10)
);


CREATE TABLE restaurant (
    restaurant_id    NUMBER(5)      NOT NULL,
    restaurant_name  VARCHAR2(60)   NOT NULL,
    cuisine_type     VARCHAR2(30)   NOT NULL,
    city             VARCHAR2(30)   NOT NULL,
    rating           NUMBER(2,1)    DEFAULT 0 NOT NULL,
    is_open          CHAR(1)        DEFAULT 'Y' NOT NULL,
    CONSTRAINT pk_restaurant      PRIMARY KEY (restaurant_id),
    CONSTRAINT ck_restaurant_rate CHECK (rating BETWEEN 0 AND 5),
    CONSTRAINT ck_restaurant_open CHECK (is_open IN ('Y', 'N'))
);


CREATE TABLE menu_item (
    item_id        NUMBER(5)      NOT NULL,
    restaurant_id  NUMBER(5)      NOT NULL,
    item_name      VARCHAR2(60)   NOT NULL,
    category       VARCHAR2(30)   NOT NULL,
    price          NUMBER(8,2)    NOT NULL,
    is_veg         CHAR(1)        NOT NULL,
    available      CHAR(1)        DEFAULT 'Y' NOT NULL,
    CONSTRAINT pk_menu_item       PRIMARY KEY (item_id),
    CONSTRAINT fk_menu_restaurant FOREIGN KEY (restaurant_id)
                                  REFERENCES restaurant (restaurant_id),
    CONSTRAINT ck_menu_price      CHECK (price > 0),
    CONSTRAINT ck_menu_veg        CHECK (is_veg IN ('Y', 'N')),
    CONSTRAINT ck_menu_available  CHECK (available IN ('Y', 'N'))
);


CREATE TABLE delivery_partner (
    partner_id    NUMBER(5)      NOT NULL,
    full_name     VARCHAR2(60)   NOT NULL,
    phone         VARCHAR2(10)   NOT NULL,
    vehicle_type  VARCHAR2(15)   NOT NULL,
    city          VARCHAR2(30)   NOT NULL,
    status        VARCHAR2(15)   DEFAULT 'AVAILABLE' NOT NULL,
    CONSTRAINT pk_partner         PRIMARY KEY (partner_id),
    CONSTRAINT uq_partner_phone   UNIQUE (phone),
    CONSTRAINT ck_partner_vehicle CHECK (vehicle_type IN ('BIKE', 'SCOOTER', 'BICYCLE')),
    CONSTRAINT ck_partner_status  CHECK (status IN ('AVAILABLE', 'ON_DELIVERY', 'OFFLINE'))
);


-- NOTE: the table is called ORDERS (not ORDER) because ORDER is a reserved word.
--    partner_id is NULL until a delivery partner is assigned.

CREATE TABLE orders (
    order_id          NUMBER(6)      NOT NULL,
    customer_id       NUMBER(5)      NOT NULL,
    restaurant_id     NUMBER(5)      NOT NULL,
    partner_id        NUMBER(5),
    order_date        DATE           DEFAULT SYSDATE NOT NULL,
    status            VARCHAR2(20)   DEFAULT 'PLACED' NOT NULL,
    delivery_address  VARCHAR2(120)  NOT NULL,
    total_amount      NUMBER(10,2)   DEFAULT 0 NOT NULL,
    CONSTRAINT pk_orders            PRIMARY KEY (order_id),
    CONSTRAINT fk_orders_customer   FOREIGN KEY (customer_id)
                                    REFERENCES customer (customer_id),
    CONSTRAINT fk_orders_restaurant FOREIGN KEY (restaurant_id)
                                    REFERENCES restaurant (restaurant_id),
    CONSTRAINT fk_orders_partner    FOREIGN KEY (partner_id)
                                    REFERENCES delivery_partner (partner_id),
    CONSTRAINT ck_orders_status     CHECK (status IN ('PLACED', 'OUT_FOR_DELIVERY',
                                                      'DELIVERED', 'CANCELLED')),
    CONSTRAINT ck_orders_total      CHECK (total_amount >= 0)
);


--    Composite primary key = (order_id, item_id)
--    unit_price stores the price at the time of ordering.

CREATE TABLE order_item (
    order_id    NUMBER(6)    NOT NULL,
    item_id     NUMBER(5)    NOT NULL,
    quantity    NUMBER(3)    NOT NULL,
    unit_price  NUMBER(8,2)  NOT NULL,
    CONSTRAINT pk_order_item       PRIMARY KEY (order_id, item_id),
    CONSTRAINT fk_oitem_order      FOREIGN KEY (order_id)
                                   REFERENCES orders (order_id) ON DELETE CASCADE,
    CONSTRAINT fk_oitem_menu       FOREIGN KEY (item_id)
                                   REFERENCES menu_item (item_id),
    CONSTRAINT ck_oitem_quantity   CHECK (quantity BETWEEN 1 AND 20),
    CONSTRAINT ck_oitem_price      CHECK (unit_price > 0)
);


CREATE TABLE payment (
    payment_id      NUMBER(6)     NOT NULL,
    order_id        NUMBER(6)     NOT NULL,
    payment_mode    VARCHAR2(10)  NOT NULL,
    payment_status  VARCHAR2(10)  DEFAULT 'PENDING' NOT NULL,
    amount          NUMBER(10,2)  NOT NULL,
    paid_on         DATE,
    CONSTRAINT pk_payment         PRIMARY KEY (payment_id),
    CONSTRAINT uq_payment_order   UNIQUE (order_id),
    CONSTRAINT fk_payment_order   FOREIGN KEY (order_id)
                                  REFERENCES orders (order_id),
    CONSTRAINT ck_payment_mode    CHECK (payment_mode IN ('UPI', 'CARD', 'WALLET', 'COD')),
    CONSTRAINT ck_payment_status  CHECK (payment_status IN ('PAID', 'PENDING',
                                                            'FAILED', 'REFUNDED')),
    CONSTRAINT ck_payment_amount  CHECK (amount >= 0)
);


CREATE INDEX idx_menu_restaurant   ON menu_item (restaurant_id);
CREATE INDEX idx_orders_customer   ON orders (customer_id);
CREATE INDEX idx_orders_restaurant ON orders (restaurant_id);


SELECT table_name, column_name, data_type, data_length, nullable
FROM   user_tab_columns
WHERE  table_name IN ('CUSTOMER', 'RESTAURANT', 'MENU_ITEM', 'DELIVERY_PARTNER',
                      'ORDERS', 'ORDER_ITEM', 'PAYMENT')
ORDER  BY table_name, column_id;


SELECT table_name, constraint_name, constraint_type, r_constraint_name
FROM   user_constraints
WHERE  table_name IN ('CUSTOMER', 'RESTAURANT', 'MENU_ITEM', 'DELIVERY_PARTNER',
                      'ORDERS', 'ORDER_ITEM', 'PAYMENT')
AND    constraint_type IN ('P', 'R', 'U')
ORDER  BY table_name, constraint_type, constraint_name;


