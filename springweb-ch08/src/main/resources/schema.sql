CREATE DATABASE order_system DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;



CREATE TABLE customer (
    customer_id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
    customer_name VARCHAR(20) NOT NULL,
    customer_address VARCHAR(60),
    customer_email VARCHAR(40)
);
CREATE TABLE product (
    product_id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
    product_name VARCHAR(40) NOT NULL,
    product_description VARCHAR(200),
    product_price INTEGER NOT NULL CHECK(product_price > 0)
);
CREATE TABLE inventory (
    product_id INTEGER PRIMARY KEY,
    inventory_quantity INTEGER NOT NULL,
    CONSTRAINT fk_inventory_product_id FOREIGN KEY (product_id)
    REFERENCES product (product_id)
    ON DELETE CASCADE
);
CREATE TABLE orders (
    order_id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
    customer_id INTEGER,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_order_customer_id FOREIGN KEY (customer_id)
    REFERENCES customer (customer_id)
    ON DELETE CASCADE
);
CREATE TABLE order_item (
    order_item_id INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
    product_id INTEGER,
    order_item_quantity INTEGER NOT NULL,
    order_id INTEGER,
    CONSTRAINT fk_order_item_order_id FOREIGN KEY (order_id)
    REFERENCES orders (order_id)
    ON DELETE CASCADE
);