CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
	id				BIGINT AUTO_INCREMENT,
    habilidade		VARCHAR(255) NOT NULL,
    int_forca		VARCHAR(100) NOT NULL,
    fraqueza		VARCHAR(255) NOT NULL,
    
    PRIMARY KEY (id)
);

CREATE TABLE tb_personagem(
	id			BIGINT AUTO_INCREMENT,
    nome 		VARCHAR(255) NOT NULL,
    ataque		DECIMAL(7,2) NOT NULL,
    defesa 		DECIMAL(7,2) NOT NULL,
	genero 		CHAR(1),
    classe_id	BIGINT, 
    
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id) REFERENCES tb_classe(id)
);

INSERT INTO tb_classe(habilidade, int_forca, fraqueza) VALUES ("TELETRANSPORTE", "MEDIO", "TELETRANSPORTA SOMENTE P/ LUGARES QUE JA FOI");
INSERT INTO tb_classe(habilidade, int_forca, fraqueza) VALUES ("LASER PELOS OLHOS", "FORTE", "DOR FORTE NA CABEÇA AO LANÇAR MUITOS LASER");
INSERT INTO tb_classe(habilidade, int_forca, fraqueza) VALUES ("EXPLOSÃO PELO TOQUE", "MEDIA", "NÃO TER CONTROLE AO TOQUE");
INSERT INTO tb_classe(habilidade, int_forca, fraqueza) VALUES ("CONTROLE DA MENTE", "FORTE", "SÓ UMA POR VEZ");
INSERT INTO tb_classe(habilidade, int_forca, fraqueza) VALUES ("PERSUASÃO", "FRACO", "PRECISA TOCAR A PESSOAS E CONVERSAR POR 5 MIN");

INSERT INTO tb_personagem(nome, ataque, defesa, genero, classe_id) VALUES ("LUA", 3333.33, 2000.0, 'F', 4);
INSERT INTO tb_personagem(nome, ataque, defesa, genero, classe_id) VALUES ("SOL", 1150.9, 1500.0, 'M', 3);
INSERT INTO tb_personagem(nome, ataque, defesa, genero, classe_id) VALUES ("JUPITER", 1000.0, 250.33, 'O', 1);
INSERT INTO tb_personagem(nome, ataque, defesa, genero, classe_id) VALUES ("SATURNO", 2266.33, 3000.0, 'F', 2);
INSERT INTO tb_personagem(nome, ataque, defesa, genero, classe_id) VALUES ("PLUTÃO", 1444.15, 999.3, 'O', 5);
INSERT INTO tb_personagem(nome, ataque, defesa, genero, classe_id) VALUES ("VENUS", 2247.57, 1172.33, 'M', 3);
INSERT INTO tb_personagem(nome, ataque, defesa, genero, classe_id) VALUES ("MERCURIO", 1127.0, 1142.33, 'F', 1);
INSERT INTO tb_personagem(nome, ataque, defesa, genero, classe_id) VALUES ("URANO", 1377.75, 844.33, 'O', 5);

SELECT * FROM tb_personagem WHERE ataque > 2000;
SELECT * FROM tb_personagem WHERE defesa > 1000 AND defesa < 2000;
SELECT * FROM tb_personagem WHERE nome LIKE "%C%";
SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_classe.id = tb_personagem.classe_id;
SELECT * FROM tb_personagem WHERE classe_id = 5;