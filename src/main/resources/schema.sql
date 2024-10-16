create table if not exists Products
(
    ProductId serial not NULL PRIMARY KEY,
    Description VARCHAR(255) NOT NULL,
    ProductCost FLOAT NULL,
    ProductCount FLOAT NULL
);

create table if not exists Customers
(
    CustomerId serial not NULL PRIMARY KEY,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL

);

create table if not exists Orders
(
    DateOfOrder VARCHAR(255) NOT NULL,
    CountOfOrders INT NOT NULL,
    ProductId INT REFERENCES Products(ProductId),
    CustomerId INT REFERENCES Customers(CustomerId)
);



INSERT INTO Customers(firstname, lastname)
VALUES
    ('Иван', 'Иванов'),
    ('Петр', 'Петров'),
    ('Анна', 'Сидорова'),
    ('Елена', 'Смирнова'),
    ('Дмитрий', 'Козлов'),
    ('Ольга', 'Васильева'),
    ('Сергей', 'Михайлов'),
    ('Мария', 'Федорова'),
    ('Алексей', 'Николаев'),
    ('Наталья', 'Соколова');

INSERT INTO Products (description, productcost, productcount)
VALUES
    ('Смартфон Apple iPhone 13', 799.99, 10.00),
    ('Ноутбук Lenovo ThinkPad X1 Carbon', 1499.99, 5.00),
    ('Телевизор Samsung QLED 4K', 1299.99, 8.00),
    ('Наушники Sony WH-1000XM4', 349.99, 15.00),
    ('Планшет Apple iPad Pro', 899.99, 7.00),
    ('Фотокамера Canon EOS R5', 3899.99, 3.00),
    ('Игровая консоль Sony PlayStation 5', 499.99, 12.00),
    ('Ноутбук Dell XPS 13', 1199.99, 6.00),
    ('Смарт-часы Apple Watch Series 7', 399.99, 20.00),
    ('Телевизор LG OLED 4K', 1599.99, 4.00);


INSERT INTO Orders (dateoforder, countoforders, productid, customerid)
VALUES
    ('2023-10-01', 2 ,1, 1),
    ('2023-10-02', 1, 2, 2),
    ('2023-10-03', 3, 3, 3),
    ('2023-10-04', 1, 4, 4),
    ('2023-10-05', 2, 5, 5),
    ('2023-10-06', 1, 6, 6),
    ('2023-10-07', 4, 7, 7),
    ('2023-10-08', 1, 8, 8),
    ('2023-10-09', 2, 9, 9),
    ('2023-10-10', 1, 10, 10);
