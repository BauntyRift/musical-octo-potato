INSERT INTO Исполнители (Имя_исполнителя) VALUES 
('Madonna'), 
('The Beatles'), 
('Michael Jackson'), 
('Queen'),
('Elton John');

-- Вставка данных в таблицу Жанры
INSERT INTO Жанры (Название_жанра) VALUES 
('Pop'), 
('Rock'), 
('R&B');

-- Вставка данных в таблицу Альбомы
INSERT INTO Альбомы (Название_альбома, Год_выпуска) VALUES 
('Thriller', 1982), 
('Abbey Road', 1969), 
('Like a Virgin', 1984),
('My Greatest Hits', 1990);

-- Вставка данных в таблицу Треки
INSERT INTO Треки (Название_трека, Продолжительность, ID_альбома) VALUES 
('Billie Jean', 292, 1), 
('Come Together', 248, 2), 
('Material Girl', 239, 3),
('Beat It', 258, 1),
('Hey Jude', 431, 2),
('Bohemian Rhapsody', 367, 3),
('My Love Song', 300, 3);

-- Вставка данных в таблицу Сборники
INSERT INTO Сборники (Название_сборника, Год_выпуска) VALUES 
('Greatest Hits', 2018), 
('Best of 80s', 2019), 
('Essential R&B', 2020);

-- Добавление связей между таблицами
INSERT INTO Исполнители_Жанры (ID_исполнителя, ID_жанра) VALUES 
(1, 1), 
(2, 2), 
(3, 3), 
(4, 2),
(5, 1);


INSERT INTO Альбомы_Исполнители (ID_альбома, ID_исполнителя) VALUES 
(1, 3), 
(2, 2), 
(3, 1),
(4, 4);

INSERT INTO Сборники_Треки (ID_сборника, ID_трека) VALUES 
(1, 1), 
(2, 5), 
(3, 3), 
(1, 4), 
(3, 6), 
(2, 2),
(1, 7);