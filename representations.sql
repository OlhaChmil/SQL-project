use project;

-- Представление с общей информацией о резервированиях и гостях
CREATE VIEW reservation_info AS
SELECT
    r.reservation_id,
    c.customer_id,
    c.first_name,
    c.last_name,
    r.room,
    r.check_in,
    r.check_out,
    r.price,
    r.reservation_status
FROM reservation r
JOIN customers c ON r.guest = c.customer_id;

select * from reservation_info;


-- представление, которое объединяет информацию о запросах с дополнительной информацией о резервации и канале
CREATE VIEW request_info AS
SELECT
    req.request_id,
    req.reservation,
    req.received,
    req.channels AS request_channels_id,
    ch.channels_name,
    ch.description AS channel_description,
    ch.channels_price,
    req.description AS request_description,
    req.status,
    req.processed_by,
    emp.first_name AS processed_by_first_name,
    emp.last_name AS processed_by_last_name,
    res.check_in,
    res.check_out,
    res.reservation_status
FROM requests req
JOIN channels ch ON req.channels = ch.channels_id
LEFT JOIN employees emp ON req.processed_by = emp.employee_id
LEFT JOIN reservation res ON req.reservation = res.reservation_id;

SELECT * FROM request_info;


-- представление с информацией о комнатах, включая тип комнаты и количество занятых комнат
CREATE VIEW room_info AS
SELECT
    r.room_id,
    r.room_type,
    r.room_number,
    r.description AS room_description,
    COUNT(res.reservation_id) AS occupied_rooms_count
FROM rooms r
LEFT JOIN reservation res ON r.room_id = res.room
GROUP BY r.room_id, r.room_type, r.room_number, r.description;

SELECT * FROM room_info;




