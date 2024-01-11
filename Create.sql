CREATE TABLE IF NOT EXISTS Исполнители (
    ID_исполнителя SERIAL PRIMARY KEY,
    Имя_исполнителя VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Жанры (
    ID_жанра SERIAL PRIMARY KEY,
    Название_жанра VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS Исполнители_Жанры (
    ID SERIAL PRIMARY KEY,
    ID_исполнителя INT REFERENCES Исполнители(ID_исполнителя),
    ID_жанра INT REFERENCES Жанры(ID_жанра)
);

CREATE TABLE IF NOT EXISTS Альбомы (
    ID_альбома SERIAL PRIMARY KEY,
    Название_альбома VARCHAR(100),
    Год_выпуска INT
);

CREATE TABLE IF NOT EXISTS Альбомы_Исполнители (
    ID SERIAL PRIMARY KEY,
    ID_альбома INT REFERENCES Альбомы(ID_альбома),
    ID_исполнителя INT REFERENCES Исполнители(ID_исполнителя)
);

CREATE TABLE IF NOT EXISTS Треки (
    ID_трека SERIAL PRIMARY KEY,
    Название_трека VARCHAR(100),
    Продолжительность INT,
    ID_альбома INT REFERENCES Альбомы(ID_альбома)
);

CREATE TABLE IF NOT EXISTS Сборники (
    ID_сборника SERIAL PRIMARY KEY,
    Название_сборника VARCHAR(100),
    Год_выпуска INT
);

CREATE TABLE IF NOT EXISTS Сборники_Треки (
    ID SERIAL PRIMARY KEY,
    ID_сборника INT REFERENCES Сборники(ID_сборника),
    ID_трека INT REFERENCES Треки(ID_трека)
);