use project;

-- Обновление данных в таблице employees
UPDATE employees 
SET position = 'junior_front_officer' 
WHERE employee_id IN (1, 3, 5, 7, 9);



UPDATE employees 
SET position = 'midl_front_officer' 
WHERE employee_id IN (2, 4);

UPDATE employees 
SET position = 'senior_front_officer' 
WHERE first_name = 'Joshuah' AND last_name = 'Hickle';


UPDATE employees 
SET position = 'general manager' 
WHERE first_name = 'Howell' AND last_name = 'Williamson';

-- Обновление данных в таблице rooms
UPDATE rooms
SET 
  room_number = CASE
    WHEN room_id BETWEEN 1 AND 10 THEN room_id + 100
    WHEN room_id BETWEEN 11 AND 20 THEN room_id + 200
    WHEN room_id BETWEEN 21 AND 30 THEN room_id + 300
    WHEN room_id BETWEEN 31 AND 40 THEN room_id + 400
    WHEN room_id BETWEEN 41 AND 50 THEN room_id + 500
  END,
  room_type = CASE
    WHEN room_id BETWEEN 1 AND 10 THEN 'standard'
    WHEN room_id BETWEEN 11 AND 20 THEN 'junior suite'
    WHEN room_id BETWEEN 21 AND 30 THEN 'suite'
    WHEN room_id BETWEEN 31 AND 40 THEN 'family'
    WHEN room_id BETWEEN 41 AND 50 THEN 'superior'
  END;
 
 
 -- в процессе работы понялаб что в строке country_of_residence есть числовые значения, поэтому чистим их
UPDATE customers
SET country_of_residence = NULL
WHERE country_of_residence REGEXP '[^a-zA-Z]';

-- рандомно добавляем данные, чтобы было с чем работать
UPDATE customers
SET country_of_residence = 'USA'
WHERE MOD(customer_id, 3) = 0;

UPDATE customers
SET country_of_residence = 'Germany'
WHERE customer_id <= 50 AND MOD(customer_id, 2) = 0;

UPDATE customers
SET country_of_residence = 'Netherlands'
WHERE customer_id > 50 AND MOD(customer_id, 2) = 0;

UPDATE customers
SET country_of_residence = CASE 
    WHEN customer_id % 4 = 0 THEN 'Italy'
    WHEN customer_id % 4 = 1 THEN 'Belgium'
    WHEN customer_id % 4 = 2 THEN 'Austria'
    WHEN customer_id % 4 = 3 THEN 'Czech'
END
WHERE country_of_residence IS NULL;

UPDATE customers
SET sex = CASE 
    WHEN first_name LIKE '%e' OR first_name LIKE '%y' OR first_name LIKE '%a' THEN 'f'
    ELSE 'm'
END;


