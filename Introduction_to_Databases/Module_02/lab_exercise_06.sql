CREATE DATABASE IF NOT EXISTS football_club;

USE football_club;

CREATE TABLE IF NOT EXISTS players (
    PlayerID INT NOT NULL,
    PlayerName VARCHAR(100) NOT NULL,
    PlayerAge INT
);

CREATE TABLE IF NOT EXISTS games (
    GameID INT NOT NULL,
    GameDate DATE,
    Score INT
);
