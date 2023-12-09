

/* 
 * База данных "Гостиница" разработана для эффективного управления операциями, связанными 
 * с бронированием номеров, обслуживанием гостей, финансовым учетом и управлением 
 * персоналом гостиничного предприятия. Система предоставляет удобные средства для 
 * взаимодействия с клиентами, контроля за номерами и каналами бронирования, а также для 
 * обработки запросов и пожеланий гостей.
 * 
 * Функциональность базы данных:
		Управление клиентами:
			Регистрация новых клиентов
			Хранение контактной информации и предпочтений клиентов
			Управление номерами:
		Запись характеристик номеров
			Отслеживание доступности и занятости номеров
			Управление каналами бронирования:
		Регистрация новых каналов
		Управление сотрудниками:
			Добавление информации о сотрудниках
			Управление их должностями
		Бронирование и запросы:
			Организация бронирования номеров
			Обработка запросов от клиентов
 */

drop database project;

create database project;

use project;

create table customers (
	customer_id bigint auto_increment not null primary key, 
	last_name varchar(100) not null,
	first_name varchar(100) not null,
	birth_date DATE,
	country_of_residence varchar(100),
	sex varchar(1),
	email varchar(100) not null unique,
	phone int not null unique
);

create table rooms (
	room_id int auto_increment not null primary key,
	room_type varchar(100) not null,
	room_number int not null,
	description varchar(100)
);


create table channels (
	channels_id int auto_increment not null primary key,
	channels_name varchar(100) not null unique,
	description varchar(100),
	channels_price int not null
);

create table employees (
    employee_id bigint auto_increment not null primary key,
    first_name varchar(100) not null,
    last_name varchar(100) not null,
    position varchar(100) not null
);


create table reservation (
    reservation_id bigint auto_increment not null primary key,
    guest bigint not null,
    room int not null,
    channels int,
    check_in date,
    check_out date,
    price int,
    reservation_status enum('expected','checked in','checked out','cancelled'),
    foreign key (guest) references customers(customer_id),
    foreign key (room) references rooms(room_id),
    foreign key (channels) references channels(channels_id)
   );
   

CREATE INDEX idx_channels_price ON channels(channels_price);


ALTER TABLE reservation
ADD CONSTRAINT fk_reservation_channels
FOREIGN KEY (price) REFERENCES channels(channels_price);

create table requests (
    request_id bigint auto_increment not null primary key,
    reservation bigint not null,
    received datetime default now(),
    channels int,
    description varchar(255),
    status enum('approved','pending','declined','cancelled'),
    processed_by bigint not null,
    foreign key (reservation) references reservation(reservation_id),
    foreign key (channels) references channels(channels_id),
    foreign key (processed_by) references employees (employee_id)
);


create table payments (
    payment_id bigint auto_increment not null primary key,
    reservation bigint not null,
    amount int not null,
    payment_date date not null,
    channels int not null,
    foreign key (reservation) references reservation(reservation_id),
    foreign key (channels) references channels(channels_id)
);