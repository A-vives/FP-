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

    AND
    O.ProductID = OD.ProductID