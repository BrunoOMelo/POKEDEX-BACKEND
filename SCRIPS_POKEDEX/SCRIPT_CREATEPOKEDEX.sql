USE master;
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'pokedex')
	BEGIN
		CREATE DATABASE pokedex;
	END