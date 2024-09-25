USE hw3;

-- Змініть декілька операторів INNER на LEFT чи RIGHT. Визначте, що відбувається з кількістю рядків. 
-- Чому? Напишіть відповідь у текстовому файлі.
SELECT count(*) FROM order_details od
INNER JOIN orders o ON od.order_id = o.id
RIGHT JOIN customers c ON o.customer_id = c.id
LEFT JOIN products p ON od.product_id = p.id
LEFT JOIN categories cat ON p.category_id = cat.id
LEFT JOIN employees e ON o.employee_id = e.employee_id
LEFT JOIN shippers s ON o.shipper_id = s.id
LEFT JOIN suppliers sup ON p.supplier_id = sup.id;
-- Результат: 535 рядків
-- Рядків стало більше, тому що RIGHT/LEFT JOIN включають рядки які не мають відповідностей в правій/лівій таблиці