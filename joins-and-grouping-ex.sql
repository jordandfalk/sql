use classicmodels;

SELECT c.customerName as 'Customer Name', CONCAT(e.lastName, ", ", e.firstName) as 'Sales Rep'
FROM customers c JOIN employees e ON c.salesRepEmployeeNumber = e.employeeNumber
ORDER BY 1 ASC;

SELECT p.productName as 'Product Name', SUM(o.quantityOrdered) as 'Total # Ordered', p.MSRP * SUM(o.quantityOrdered) as 'Total Sale'
FROM products p JOIN orderdetails o ON p.productCode = o.productCode
GROUP BY p.productCode
ORDER BY 3 DESC;

SELECT o.status as 'Order Status', COUNT(*) as '# Orders'
FROM orders o
GROUP BY o.status
ORDER BY o.status ASC;