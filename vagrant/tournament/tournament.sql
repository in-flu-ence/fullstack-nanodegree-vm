-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.


-- Create database for tournament
\c vagrant
DROP DATABASE IF EXISTS tournament;
CREATE DATABASE tournament;
\c tournament;

-- Create tables for tournament;
CREATE TABLE IF NOT EXISTS players(
  pid SERIAL PRIMARY KEY,
  pname TEXT NOT NULL
  );

CREATE TABLE IF NOT EXISTS tournaments(
  tid SERIAL PRIMARY KEY,
  tname TEXT
);

CREATE TABLE IF NOT EXISTS matches(
  mid SERIAL PRIMARY KEY,
  mtid INT,
  winner INT,
  loser INT,
  tie BOOLEAN
  );

CREATE TABLE IF NOT EXISTS scoreboard(
  spid INT,
  stid INT,
  played INT,
  win INT,
  lose INT,
  score INT,
  tie INT,
  bye INT
)