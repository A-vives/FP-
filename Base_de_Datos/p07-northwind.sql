/*
QUERY #1
*/
SELECT 
    O.OrderID, 
    O.OrderDate, 
    SUM(OD.UnitPrice*OD.Quantity*(1 - OD.discount)) 
    as subtotal
FROM 
    `Order Details` OD, 
    Orders O, 
    Products P
WHERE 
    OD.OrderID = O.OrderID
    AND
    OD.ProductID = P.ProductID
    AND
    O.OrderDate BETWEEN '1998-05-01' AND '1998-05-31'
    group by O.OrderID;

/*
QUERY #2
*/

SELECT 
    YEAR (O.OrderDate) as year,
    SUM(OD.UnitPrice*OD.Quantity*(1 - OD.discount)) as Subtotal
FROM 
    `Order Details` OD, 
    Orders O, 
    Products P
WHERE 
    OD.OrderID = O.OrderID
    AND
    OD.ProductID = P.ProductID
    GROUP BY year
    ;

/*
QUERY #3
*/

SELECT 
    O.ShipCountry AS country,
    SUM(OD.UnitPrice*OD.Quantity*(1 - OD.discount)) as Subtotal
FROM 
    `Order Details` OD, 
    Orders O, 
    Products P
WHERE 
    OD.OrderID = O.OrderID
    AND
    OD.ProductID = P.ProductID
    GROUP BY country
    ;


/*
QUERY #4
*/

SELECT 
    E.LastName,
    E.FirstName,
    E.EmployeeID,
    SUM(OD.UnitPrice*OD.Quantity*(1 - OD.discount)) as Subtotal
FROM 
    `Order Details` OD, 
    Orders O,
    Employees E
WHERE 
    OD.OrderID = O.OrderID
    AND
    E.EmployeeID = O.EmployeeID
    GROUP BY E.EmployeeID
    ORDER BY Subtotal desc;
    ;

/*
QUERY #5
*/

SELECT 
    E.LastName,
    E.FirstName,
    E.EmployeeID,
    O.ShipCountry,
    SUM(OD.UnitPrice*OD.Quantity*(1 - OD.discount)) as Subtotal
FROM 
    `Order Details` OD, 
    Orders O,
    Employees E
WHERE 
    OD.OrderID = O.OrderID
    AND
    E.EmployeeID = O.EmployeeID
    GROUP BY O.ShipCountry, E.EmployeeID
    ORDER BY O.shipCountry, Subtotal DESC;


/*
QUERY #6
/*/

SELECT C.CategoryID,
    C.CategoryName,
    SUM(OD.UnitPrice*OD.Quantity*(1 - OD.discount)) as Subtotal
FROM
    Categories C,
    `Order Details` OD,
    Orders O,
    Products P
    WHERE
    O.OrderID = OD.OrderID
    AND
    OD.ProductID = P.ProductID
    AND
    P.CategoryID = C.CategoryID
    GROUP BY C.CategoryID;


/*
QUERY #7
/*/

SELECT C.CategoryID,
    C.CategoryName,
    count(P.ProductID) as Number
FROM
    Categories C,
    Products P
    WHERE
    P.CategoryID = C.CategoryID
    GROUP BY C.CategoryID;

/*
QUERY #8
/*/

SELECT O.OrderID,
    P.ProductID,
    P.ProductName,
    P.UnitPrice,
    OD.Quantity,
    OD.Discount,
    SUM(OD.UnitPrice*OD.Quantity*(1 - OD.discount)) as 'Extended price'
FROM
    Products P,
    Orders O,
    `Order Details` OD
WHERE
    P.ProductID = OD.ProductID

AND
    O.OrderID = OD.OrderID
AND
    O.OrderID = '10248'
GROUP BY O.OrderID,
    P.ProductID,
    P.ProductName,
    P.UnitPrice,
    OD.Quantity,
    OD.Discount;



/*
QUERY #9
/*/

SELECT 
    SUM(OD.UnitPrice*OD.Quantity*(1 - OD.discount)) as 'TotalPrice'
FROM
    Products P,
    Orders O,
    `Order Details` OD
WHERE
    P.ProductID = OD.ProductID
AND
    O.OrderID = OD.OrderID
AND
    O.OrderID = '10248';

/*
QUERY #10
/*/

SELECT 
    O.OrderID,
    O.OrderDate,
    O.RequiredDate,
    C.CustomerID,
    SH.ShipperID,
    O.ShipAddress Address,
    O.ShipCity City,
    O.ShipRegion Country,
    O.ShipPostalCode PostalCode,
    O.ShippedDate ShippedDate,
    SH.CompanyName CompanyName,
    O.Freight,
    O.ShipCity,
    O.ShipRegion,
    O.ShipPostalcode,
    O.Shipcountry,
    C.ContactName
FROM
    Orders O,
    Customers C,
    Shippers SH
WHERE
    O.CustomerID = C.CustomerID
AND
    O.ShipVia = SH.ShipperID
AND
    O.OrderID = '10248';


/*
QUERY #11
*/


SELECT 
    P.ProductName,
    SUM(OD.Quantity) as Quantity
FROM
    Products P,
    `Order Details` OD
WHERE
    P.ProductID = OD.ProductID
    GROUP BY P.ProductID
    ORDER BY Quantity desc
    limit 10
    ;


/*
QUERY #12
*/

SELECT
    DISTINCT P.ProductID,
    P.Unitprice,
    OD.UnitPrice
FROM
    Products P,
    `Order Details` OD
WHERE
    P.ProductID = OD.ProductID;

/*
QUERY #13
*/

SELECT
    P.ProductID,
    P.ProductName,
    P.UnitPrice
FROM
    Products P
ORDER BY P.UnitPrice desc
limit 10;

/*
QUERY #14
*/

select 
distinct P.ProductID,
 year(O.OrderDate) year,
 P.UnitPrice,
 OD.UnitPrice,
 OD.UnitPrice *(1 - OD.Discount) as UnitPriceWithDiscount,
 OD.UnitPrice *(1 - OD.Discount) - P.UnitPrice as profit
from 
Products P,
 `Order Details` OD,
 Orders O
where 
P.ProductID = OD.ProductID
 and 
O.OrderID = OD.OrderID
order by profit desc

limit 10;


/*
QUERY #15
*/

SELECT
    P.ProductID,
    P.ProductName,
    SUM((OD.UnitPrice-P.UnitPrice)*OD.Quantity) profit
FROM
    Products P,
    `Order Details` OD,
    Orders O
WHERE
    P.ProductID = OD.ProductID
AND 
    OD.OrderID = O.OrderID
    Group by P.ProductID
    ORDER BY profit desc
    limit 10;
    
    

/*
QUERY #16
*/


SELECT
    P.ProductID,
    P.ProductName,
    AVG(P.UnitPrice) as UnitPrice
FROM
    Products P,
    `Order Details` OD
WHERE
    OD.ProductID = P.ProductID
AND
    P.UnitPrice > (

        SELECT
              (avg(P.UnitPrice))
        FROM
              Products P

    )
GROUP BY
    P.ProductID
ORDER BY
    UnitPrice desc;

/*
QUERY #22 - 17
*/

SELECT
C.CompanyName,
(max(*O.OrderID)) NumOrders
FROM
Customers C,
Orders O
WHERE
C.CustomerID = O.CustomerID
GROUP BY C.CompanyName
ORDER BY NumOrders desc;

SELECT
    C.CompanyName, 
    COUNT(*) NumOrders 
FROM 
    Customers C,
    Orders O 
 WHERE 
    C.CustomerID = O.CustomerID 
GROUP BY 
    C.CompanyName
ORDER BY 
    NumOrders desc
    limit 1;

AND 
(
    SELECT 
        (count(*OrdersID))
    FROM
    Orders

)
GROUP BY C.CompanyName;

/*
QUERY #22 - 17
*/

SELECT
    S.ShipperID, 
    COUNT(*) NumOrders 
FROM 
    Shippers S,
    Orders O 
 WHERE 
    S.ShipperID = O.ShipperID 
GROUP BY 
    C.ShipperID
ORDER BY 
    NumOrders desc
    limit 1;


/*
QUERY #22 - 17
*/

SELECT
    concat(E.LastName,",",E.FirstName) FullName,
    S.CompanyName,
    count(O.ShipVia) NunTimes
FROM
    Employees E,
    Shippers S,
    Orders O
WHERE
    E.EmployeeID = O.EmployeeID
AND 
    O.ShipVia = S.ShipperID
    GROUP BY S.CompanyName;


/*
QUERY #23 - 18
*/

SELECT 
ProductID,
ProductName
FROM
Products P
WHERE
UnitsinStock = "0"
ORDER BY ProductName;

/*
QUERY #24 - 19
*/

SELECT 
P.ProductID,
P.ProductName,
C.CompanyName
FROM
Products P,
Orders O,
`Order Details` OD,
Customers C
WHERE
P.ProductID = OD.ProductID
 and 
O.OrderID = OD.OrderID
AND
O.CustomerID = C.CustomerID
and
UnitsinStock = "0" 
AND
 O.OrderID NOT IN
  (SELECT Discount 
  FROM `Order Details`)

Group BY P.ProductID
;
