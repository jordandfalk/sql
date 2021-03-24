use classicmodels;

SELECT productName as 'Name', productLine as 'Product Line', buyPrice as 'Buy Price'
FROM products p
ORDER BY buyPrice DESC;

SELECT contactFirstName as 'First Name', contactLastName as 'Last Name', city as 'City'
FROM customers c
WHERE country="Germany"
ORDER BY contactLastName ASC;

SELECT status
FROM orders
GROUP BY status
ORDER BY status
LIMIT 6;

SELECT * 
FROM payments p
WHERE paymentDate >="2005-001-01"
ORDER BY paymentDate ASC;

SELECT lastName as 'Last Name', firstName as 'First Name', email as 'Email', jobTitle as 'Job Title'
FROM employees e JOIN offices o on e.officeCode = o.officeCode
WHERE o.city="San Francisco"
ORDER BY lastName;

SELECT productName as 'Name', productLine as 'Product Line', productScale as 'Scale', productVendor as 'Vendor'
FROM products p
WHERE productLine in ("Classic Cars", "Vintage Cars")
ORDER BY productLine DESC, productName ASC;

