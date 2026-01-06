CREATE TABLE IF NOT EXISTS clients(
  client_id integer primary key auto_increment,
  name varchar(100) not null,
  email varchar(100) not null unique,
  phone_number varchar(15),
  created_at timestamp not null default  CURRENT_TIMESTAMP,
  modified_at timestamp not null default CURRENT_TIMESTAMP
);


CREATE TABLE IF NOT EXISTS products(
    product_id integer unsigned primary key auto_increment,
    name varchar(100) not null,
    slug varchar(100) not null unique,
    description text,
    created_at timestamp not null default  CURRENT_TIMESTAMP,
    update_at timestamp not null defa ult CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
);


CREATE TABLE if NOT EXISTS bills (
    bill_id integer unsigned  primary key auto_increment,
    client_id  integer not null, 
    total float,
    status enum('open','paid','lost') not null default 'open',
    created_at timestamp not null default  CURRENT_TIMESTAMP,
    update_at timestamp not null default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
    foreign key (client_id) references  clients(client_id)
    on delete cascade
    on update cascade
);


CREATE TABLE if NOT EXISTS bills_products(
  bills_products_id integer unsigned primary key auto_increment,
  bill_id integer unsigned not null,
  product_id integer unsigned not null,
  quantity integer not null default 1,
  created_at timestamp not null default  CURRENT_TIMESTAMP,
  update_at timestamp not null default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  foreign key (bill_id) references  bills(bill_id)
    on update cascade
    on delete cascade,
  foreign key (product_id) references products(product_id)
    on update cascade
    on delete cascade
);


CREATE TABLE if NOT EXISTS bills (
    bill_id integer unsigned  primary key auto_increment,
    client_id  integer not null, 
    total float,
    status enum('open','paid','lost') not null default 'open',
    created_at timestamp not null default  CURRENT_TIMESTAMP,
    update_at timestamp not null default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
  
);

CREATE TABLE if NOT EXISTS bills_products(
  bills_products_id integer unsigned primary key auto_increment,
  bill_id integer unsigned not null,
  product_id integer unsigned not null,
  quantity integer not null default 1,
  created_at timestamp not null default  CURRENT_TIMESTAMP,
  update_at timestamp not null default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
 
);



CREATE TABLE test(
test_id integer unsigned primary key auto_increment,
name varchar(100) not null,
qty integer,
created_at timestamp not null default CURRENT_TIMESTAMP
);

INSERT INTO products(name,slug) values ("Cuaderno","Cu-2025");
INSERT INTO products(name,slug) values ("Hoja","Ho-2025");
INSERT INTO products(name,slug) values ("lapiz","la-2025");
INSERT INTO products(name,slug) values ("Esfero","ES-2025");


INSERT IGNORE INTO products(name,slug) values  ("Hoja","Ho-2025");



CREATE TABLE IF NOT EXISTS products(
    product_id integer unsigned primary key auto_increment,
    sku varchar(20) not null unique,
    name varchar(100) not null,
    slug varchar(100) not null unique,
    description text,
    created_at timestamp not null default  CURRENT_TIMESTAMP,
    update_at timestamp not null default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
);