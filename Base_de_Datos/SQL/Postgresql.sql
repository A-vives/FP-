create table customers (
    email varchar(100),
    fname varchar(50),
    mname varchar(50),
    lname varchar(50),
    address varchar(150),
    date_of_birth date,
    constraint pk_customers primary key (email)
);

create table orders (
    number serial,
    datetime timestamp,
    email varchar(100),
    constraint pk_orders primary key (number),
    constraint fk_orders foreign key (email)
        references customers (email)
);