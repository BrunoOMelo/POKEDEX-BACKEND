/* ================= [Master] ================= */
USE master;
CREATE DATABASE IF NOT EXISTS pokedex;

/* ================= [History] ================= */
CREATE TABLE IF NOT EXISTS [dbPokedex].[History].[Pokemon](
	IdPokemon							INT 			NOT NULL,
	Name 								VARCHAR(255)	NOT NULL UNIQUE,
	IdType 								INT 			NOT NULL,
	Gender 								VARCHAR(50)		NOT NULL,
	Height 								FLOAT	 		NOT NULL,
	Weight 								FLOAT		 	NOT NULL,
	HealthPoints						SMALLINT 		NOT NULL,	
	Attack 								SMALLINT 		NOT NULL,	
	Defense 							SMALLINT 		NOT NULL,	
	Speed 								SMALLINT 		NOT NULL,	
	SpecialAttack						SMALLINT 		NOT NULL,	
	SpecialDefense						SMALLINT 		NOT NULL,	
	Avatar								BLOB			NOT NULL,	
			
	CONSTRAINT PK_Pokemon 				PRIMARY KEY		(IdPokemon)
	CONSTRAINT FK_Type 					FOREIGN KEY		(IdType)   		REFERENCES [dbPokedex].[History].[Type](IdType)
) ENGINE=INNODB,

CREATE TABLE IF NOT EXISTS [dbPokedex].[History].[Attack](
	IdAttack 							INT 			NOT NULL AUTO_INCREMENT,
	Name 								VARCHAR(255) 	NOT NULL,
	IdType 								INT 			NOT NULL,	
	Category							VARCHAR(100)	NOT NULL,
	PowerPoints 						TINYINT 		NOT NULL,
	Power								TINYINT			NOT NULL,	
	Accuracy							TINYINT			NOT NULL,	
			
	CONSTRAINT PK_Attack 				PRIMARY KEY 	(IdAttack)
	CONSTRAINT FK_Type 					FOREIGN KEY		(IdType)   		REFERENCES [dbPokedex].[History].[Type](IdType)
	
) ENGINE=INNODB,

CREATE TABLE IF NOT EXISTS [dbPokedex].[History].[Type](
	IdType 								INT 			NOT NULL AUTO_INCREMENT,
	Name 								VARCHAR(255) 	NOT NULL,
				
	CONSTRAINT PK_Type 					PRIMARY KEY 	(IdType)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS [dbPokedex].[History].[Ability](
	IdAbility 							INT 			NOT NULL AUTO_INCREMENT,
	Name 								VARCHAR(255)	NOT NULL,
	IdType								INT				NOT NULL,
	Category							VARCHAR(100)	NOT NULL,	 
	Power								SMALLINT		NOT NULL,	 
	Description 						VARCHAR(255) 	NOT NULL set utf8,
			
	CONSTRAINT PK_Ability 				PRIMARY KEY 	(IdAbility)
	CONSTRAINT FK_Type 					FOREIGN KEY		(IdType)   		REFERENCES [dbPokedex].[History].[Type](IdType), 
) ENGINE=INNODB,

CREATE TABLE IF NOT EXISTS [dbPokedex].[History].[Evolution](
	IdEvolution 						INT 			NOT NULL AUTO_INCREMENT,
	Name 								VARCHAR(255)	NOT NULL,
	Description 						VARCHAR(255)	NOT NULL set utf8,
			
	CONSTRAINT PK_Ability 				PRIMARY KEY 	(IdAbility)
) ENGINE=INNODB,

CREATE TABLE IF NOT EXISTS [dbPokedex].[Dimension].[TypeRelationship](
	IdTypeRelationship 					INT 			NOT NULL AUTO_INCREMENT,
	[Type] 								TINYINT 		NOT NULL,
		
	CONSTRAINT PK_IdTypeRelationship	PRIMARY KEY 	(IdTypeRelationship),
	CONSTRAINT FK_IdType				FOREIGN KEY 	(IdType) 		REFERENCES Attack(id_attack)
) ENGINE=INNODB,


/* ================= [Association] ================= */
CREATE TABLE IF NOT EXISTS [dbPokedex].[Association].[PokemonAttack](
	IdPokemon 							INT				NOT NULL AUTO_INCREMENT,
	IdAttack 							INT				NOT NULL,
	PokemonAttackLevel					INT				NOT NULL,
			
	CONSTRAINT FK_PokemonAttack 		FOREIGN KEY 	(IdPokemon) 	REFERENCES [dbPokedex].[History].[Pokemon](id_pokemon),
	CONSTRAINT FK_AttackPokemon 		FOREIGN KEY 	(IdAttack) 		REFERENCES [dbPokedex].[History].[Attack](id_attack)
) ENGINE=INNODB,

CREATE TABLE IF NOT EXISTS [dbPokedex].[Association].[PokemonAbility](
	IdPokemon							INT 			NOT NULL,
	IdAbility							INT 			NOT NULL,
		
	CONSTRAINT IdPokemon 				FOREIGN KEY 	(FK_Pokemon)	REFERENCES [dbPokedex].[Pokemon].[PokemonType](IdPokemon),
	CONSTRAINT IdAbility 				FOREIGN KEY 	(FK_Ability) 	REFERENCES [dbPokedex].[Pokemon].[Type](IdAbility),
		
	CONSTRAINT PK_PokemonType 			PRIMARY KEY 	(FK_Pokemon, FK_Ability)
) ENGINE=INNODB,

CREATE TABLE IF NOT EXISTS [dbPokedex].[Association].[PokemonType](
	IdPokemon							INT 			NOT NULL,
	IdType								INT 			NOT NULL,
		
	CONSTRAINT IdPokemon 				FOREIGN KEY 	(FK_Pokemon)	REFERENCES [dbPokedex].[Pokemon].[PokemonType](IdPokemon),
	CONSTRAINT IdType					FOREIGN KEY 	(FK_Type) 		REFERENCES [dbPokedex].[Pokemon].[Type](IdType),
		
	CONSTRAINT PK_PokemonType 			PRIMARY KEY 	(FK_Pokemon, FK_Type)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS [dbPokedex].[Association].[PokemonEvolution](
	IdPokemon							INT 			NOT NULL,
	IdEvolution							INT 			NOT NULL,

	CONSTRAINT IdPokemon 				FOREIGN KEY 	(FK_Pokemon)	REFERENCES [dbPokedex].[Pokemon].[PokemonType](IdPokemon),
	CONSTRAINT IdEvolution 				FOREIGN KEY 	(FK_Evolution) 	REFERENCES [dbPokedex].[Pokemon].[Type](IdEvolution),
		
	CONSTRAINT PK_PokemonEvolution 		PRIMARY KEY 	(FK_Pokemon, FK_Evolution)
) ENGINE=INNODB;

/* ================= [Admin] ================= */
CREATE TABLE IF NOT EXISTS [dbPokedex].[History].[Admin](
	AdminUser 					    	VARCHAR(20)		NOT NULL UNIQUE,
	AdminPassword 						VARCHAR(8) 	    NOT NULL,
				
	CONSTRAINT PK_Type 					PRIMARY KEY 	(AdminUser, AdminPassword)
) ENGINE=INNODB;
