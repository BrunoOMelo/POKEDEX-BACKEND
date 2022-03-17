INSERT INTO POKEMON(name,id_type,gender,height,weight,hp,attack,defense,speed,special_attack,special_defense)
VALUES
('pikachu', 1, 'masc', 1, 0.9, 100, 100, 50, 20, 150, 70);

SELECT * FROM POKEMON;

INSERT INTO POKEMON(name,id_type,gender,height,weight,hp,attack,defense,speed,special_attack,special_defense)
VALUES
('minhapomba', 1, 'masc', 1, 0.9, 100, 100, 50, 20, 150, 70);

INSERT INTO ABILIITY(name, description)
VALUES('Estatica','Estatica'),
('Download','Baixa arquivo durante a batalha');

SELECT * FROM ABILIITY

INSERT INTO POKEMON_ABILIITY(id_pokemon, id_abiliity)
VALUES(1,2),
(2,1);

SELECT * FROM POKEMON_ABILIITY;

SELECT P.name AS Nome_Pokemon, A.name AS Nome_Habilidade, A.description AS Descrição_Habilidade FROM POKEMON AS P 
INNER JOIN POKEMON_ABILIITY AS PA ON P.id_pokemon = PA.id_pokemon
INNER JOIN ABILIITY AS A ON A.id_abiliity = PA.id_abiliity

