USE hw3;

-- Відсортуйте рядки за спаданням кількості рядків.
SELECT cat.name, COUNT(*) as count, AVG(od.quantity) FROM orders o
INNER JOIN customers c ON o.customer_id = c.id
INNER JOIN employees e ON o.employee_id = e.employee_id
INNER JOIN shippers s ON o.shipper_id = s.id
INNER JOIN order_details od ON o.id = od.order_id
INNER JOIN products p ON od.product_id = p.id
INNER JOIN categories cat ON p.category_id = cat.id
INNER JOIN suppliers sup ON p.supplier_id = sup.id
GROUP by cat.name
HAVING AVG(od.quantity) > 21.0
ORDER by count DESC;