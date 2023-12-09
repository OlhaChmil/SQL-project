use project;

-- выбираем все одообренные запросы для резервирований со статусом expected
SELECT r.*, rq.*
FROM reservation r
JOIN requests rq ON r.reservation_id = rq.reservation
WHERE r.reservation_status = 'expected'
AND rq.status = 'approved';


-- выбираем все отклоненные запросы для резервирований со статусом expected
SELECT r.*, rq.*
FROM reservation r
JOIN requests rq ON r.reservation_id = rq.reservation
WHERE r.reservation_status = 'expected'
AND rq.status = 'declined';

-- -- выбираем request_id, description  из таблицы request, processed_by - выбираем фамилию сотрудника и check_in, check_out и reservation_status, где request status - declined
SELECT rq.request_id, rq.description, emp.last_name AS processed_by, r.check_in, r.check_out, r.reservation_status
FROM requests rq
JOIN reservation r ON rq.reservation = r.reservation_id
JOIN employees emp ON rq.processed_by = emp.employee_id
WHERE rq.status = 'declined';


-- выбираем резервирования сделанные через канал booking.com со статусом expected и которые сделанные женщинами старше 30 лет
SELECT r.*
FROM reservation r
JOIN channels c ON r.channels = c.channels_id
JOIN customers cust ON r.guest = cust.customer_id
WHERE c.channels_name = 'booking.com'
AND r.reservation_status = 'expected'
AND cust.sex = 'f'
AND TIMESTAMPDIFF(YEAR, cust.birth_date, CURDATE()) > 30;


-- выбираем количество запросов по каждому сотруднику
SELECT e.employee_id, e.first_name, e.last_name, COUNT(r.request_id) AS request_count
FROM employees e
LEFT JOIN requests r ON e.employee_id = r.processed_by
GROUP BY e.employee_id, e.first_name, e.last_name;


-- выбираем статусы резервирования и количество таких резервирований для каждого статуса
SELECT r.reservation_status, COUNT(r.reservation_id) AS status_count
FROM reservation r
GROUP BY r.reservation_status;





