DROP TABLE IF EXISTS videojuego;

CREATE TABLE videojuego(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre  VARCHAR(200) NOT NULL,
    descripcion VARCHAR(3000),
    imagen_url VARCHAR(500)
);

INSERT INTO videojuego (id,nombre, descripcion, imagen_url) VALUES(
1,'GTA5', 'Es un juego de acción',
'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.eurogamer.es%2Farticles%2Fguia-gta-5-trucos-grand-theft-auto-v-online-consejos-multijugador-radio-coleccionables-logros-trofeos-xbox-360-ps3&psig=AOvVaw2uvBoe3fmIL4IfpSsx_FTM&ust=1648716342562000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCIDw-JG57fYCFQAAAAAdAAAAABAD'
);

INSERT INTO videojuego (id,nombre, descripcion, imagen_url) VALUES(
2,'Counter Strike', 'Es un shoter de acción',
'https://www.google.com/url?sa=i&url=https%3A%2F%2Fas.com%2Fmeristation%2F2021%2F06%2F05%2Fnoticias%2F1622881757_363299.html&psig=AOvVaw29oUrFd8aVREbINboqs0xG&ust=1648716370587000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCIiPpaC57fYCFQAAAAAdAAAAABAO'
);

INSERT INTO videojuego (id,nombre, descripcion, imagen_url) VALUES(
3,'Arma 3', 'Es un simulador militar',
'https://www.google.com/url?sa=i&url=https%3A%2F%2Fallgamersin.com%2Futilizan-varios-videos-de-arma-3-como-imagenes-reales-para-informar-de-la-guerra-en-ucrania%2F&psig=AOvVaw1KqXNqqpEKMCV2Sg4UsC5j&ust=1648716397320000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCPCx8q257fYCFQAAAAAdAAAAABAK'
);

INSERT INTO videojuego (id,nombre, descripcion, imagen_url) VALUES(
4,'Call of Duty Black ops |||', 'Es un shoter de acción',
'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vidaextra.com%2Fanalisis%2Fcall-of-duty-black-ops-iii-analisis&psig=AOvVaw2U_4D0_V614GTKOdJD2e1x&ust=1648716480837000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCNCE1dS57fYCFQAAAAAdAAAAABAD'
);

DROP TABLE IF EXISTS distribuidor;

CREATE TABLE distribuidor (
id INT PRIMARY KEY AUTO_INCREMENT,
nombre VARCHAR(200) NOT NULL,
sitio_web VARCHAR(500)
);

INSERT INTO distribuidor (nombre, sitio_web) VALUES
('2K','https://www.2k.com/en-US/'),
('Focus Home Intereactive', 'https://focus-home.com'),
('Thekla', null),
('Number One', null),
('505 Games', 'https://505games.com');

ALTER TABLE videojuego ADD COLUMN distribuidor_id INT,
ADD FOREIGN KEY (distribuidor_id) REFERENCES distribuidor (id);

UPDATE videojuego SET distribuidor_id = 3 WHERE id IN(1,2);
UPDATE videojuego SET distribuidor_id = 4 WHERE id IN(3);
UPDATE videojuego SET distribuidor_id = 2 WHERE id IN(4);

ALTER TABLE videojuego MODIFY distribuidor_id int NOT NULL;

