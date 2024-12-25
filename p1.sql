create database if not exists book_my_show;

use book_my_show;

-- creates table for cinema
create table cinema(
    cinema_id int primary key,
    cinema_name varchar(50),
);

insert into cinema values(
(1, 'PVR'),
(2, 'INOX'),
(3, 'Cinepolis')
);

-- creates table for cinema_location
create table cinema_location(
    location_id int primary key,
    city varchar(50),
    state varchar(50),
    pin_code varchar(10),
    cinema_id int,
    foreign key (cinema_id) references cinema(cinema_id)
);

insert into cinema_location values(
(1, 'Bangalore', 'Karnataka', '560001', 1),
(2, 'Mumbai', 'Maharashtra', '400001', 2),
(3, 'Delhi', 'Delhi', '110001', 3)
);

-- creates table for movie
create table movie(
movie_id int primary key,
movie_name varchar(50),
movie_category varchar(50),
cinema_id int,
foreign key (cinema_id) references cinema(cinema_id)
);

insert into movie values(
(1, 'Avengers', 'U', 1),
(2, 'Joker', 'U', 2),
(3, '3 Idiots', 'U', 3),
(4, 'vanvas', 'UA', 1),
(5, 'Dangal', 'UA', 2)
);

-- create table for movie_language
create table movie_language(
    language_id int primary key,
    language varchar(50),
    movie_id int,
    foreign key (movie_id) references movie(movie_id)
);

insert into movie_language values(
(1, 'Hindi', 1),
(2, 'English', 2),
(3, 'Hindi', 3),
(4, 'Hindi', 4),
(5, 'Hindi', 5)
);

-- create table for movie_format
create table movie_format(
    format_id int primary key,
    format varchar(50),
    movie_id int,
    foreign key (movie_id) references movie(movie_id)
);

insert into movie_format values(
    (1, '2D', 1),
    (2, '3D', 2),
    (3, '2D', 3),
    (4, '2D', 4),
    (5, '2D', 5)
);

-- creates table for movie_showing_time
create table movie_showing_time(
   time_id int primary key,
   movie_id int,
   cinema_id int,
   date_time datetime,
    foreign key (movie_id) references movie(movie_id),
    foreign key (cinema_id) references cinema(cinema_id)
);

insert into movie_showing_time values(
(1, 1, 1, '2020-01-01 10:00:00'),
(2, 2, 2, '2020-01-01 12:00:00'),
(3, 3, 3, '2020-01-01 14:00:00'),
(4, 4, 1, '2020-01-01 16:00:00'),
(5, 5, 2, '2020-01-01 18:00:00'),
(6, 1, 1, '2020-01-01 20:00:00'),
(7, 2, 2, '2020-01-01 22:00:00'),
(8, 3, 3, '2020-01-01 24:00:00'),
(9, 4, 1, '2020-01-01 26:00:00'),
(10, 5, 2, '2020-01-01 28:00:00')
);

