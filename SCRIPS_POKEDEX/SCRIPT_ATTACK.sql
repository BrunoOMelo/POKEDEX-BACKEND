USE pokedex;
--IF NOT EXISTS (SELECT name FROM pokedex WHERE name = 'ATTACK')
	--BEGIN
		CREATE TABLE ATTACK (
		id_attack INT NOT NULL IDENTITY(1,1),
		name VARCHAR(50) NOT NULL,
		pt INT NOT NULL,
		id_type INT NOT NULL,
		CONSTRAINT PK_ATTACK PRIMARY KEY (id_attack));
	--END