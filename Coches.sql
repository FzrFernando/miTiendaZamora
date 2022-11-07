CREATE DATABASE COCHES;

CREATE TABLE COCHES.CATEGORY(
    id			INT PRIMARY KEY,
    name		VARCHAR(50),
    description	VARCHAR(100)
);

INSERT INTO COCHES.CATEGORY VALUES (1,'urbano','reducido tamaño y son para circular por la ciudad');
INSERT INTO COCHES.CATEGORY VALUES (2,'familiar','cinco puertas y techo elevado');
INSERT INTO COCHES.CATEGORY VALUES (3,'coupé','techo inclinado que les dota de mayor estilo y tienen un potente motor');
INSERT INTO COCHES.CATEGORY VALUES (4,'muscle car','tracción trasera y altas dosis de potencia');
INSERT INTO COCHES.CATEGORY VALUES (5,'deportivos','diseños realmente atractivos, motores muy potentes, una velocidad máxima que supera los 250 km/h');

CREATE TABLE COCHES.CARS(
    id			INT PRIMARY KEY,
    name		VARCHAR(50) UNIQUE,
    description	VARCHAR(50),
    price		DECIMAL(8,2),
    id_category	INT,
    CONSTRAINT fk_cars 	FOREIGN KEY (id_category) REFERENCES COCHES.CATEGORY(id)
    );
    
insert into COCHES.CARS (id, name, description, price, id_category) values (1, 'Sportage', 'Kia', 5214.73, 1);
insert into COCHES.CARS (id, name, description, price, id_category) values (2, 'RL', 'Acura', 24293.69, 2);
insert into COCHES.CARS (id, name, description, price, id_category) values (3, 'Sierra 1500', 'GMC', 18348.84, 3);
insert into COCHES.CARS (id, name, description, price, id_category) values (4, 'T100 Xtra', 'Toyota', 41089.49, 4);
insert into COCHES.CARS (id, name, description, price, id_category) values (5, 'X5', 'BMW', 94695.78, 5);
insert into COCHES.CARS (id, name, description, price, id_category) values (6, 'Rio', 'Kia', 87381.18, 1);
insert into COCHES.CARS (id, name, description, price, id_category) values (7, 'Camry Hybrid', 'Toyota', 58241.29, 2);
insert into COCHES.CARS (id, name, description, price, id_category) values (8, 'Matrix', 'Toyota', 11186.22, 3);
insert into COCHES.CARS (id, name, description, price, id_category) values (9, 'Avenger', 'Dodge', 28649.13, 4);
insert into COCHES.CARS (id, name, description, price, id_category) values (10, 'Chariot', 'Mitsubishi', 14707.29, 5);
insert into COCHES.CARS (id, name, description, price, id_category) values (11, 'Santa Fe', 'Hyundai', 55951.19, 1);
insert into COCHES.CARS (id, name, description, price, id_category) values (12, 'Grand Am', 'Pontiac', 33597.31, 2);
insert into COCHES.CARS (id, name, description, price, id_category) values (13, 'Ranger', 'Ford', 48979.59, 3);
insert into COCHES.CARS (id, name, description, price, id_category) values (14, 'M3', 'BMW', 29877.87, 4);
insert into COCHES.CARS (id, name, description, price, id_category) values (15, 'Rodeo', 'Isuzu', 50179.2, 5);
insert into COCHES.CARS (id, name, description, price, id_category) values (16, 'Sable', 'Mercury', 68366.29, 1);
insert into COCHES.CARS (id, name, description, price, id_category) values (17, 'Escape', 'Ford', 68592.71, 2);
insert into COCHES.CARS (id, name, description, price, id_category) values (18, 'Matrux', 'Toyota', 75274.2, 3);
insert into COCHES.CARS (id, name, description, price, id_category) values (19, 'Diamante', 'Mitsubishi', 81684.09, 4);
insert into COCHES.CARS (id, name, description, price, id_category) values (20, 'Sonoma Club Coupe', 'GMC', 71428.49, 5);
insert into COCHES.CARS (id, name, description, price, id_category) values (21, 'Scoupe', 'Hyundai', 68887.95, 1);
insert into COCHES.CARS (id, name, description, price, id_category) values (22, 'Savana 3500', 'GMC', 85172.51, 2);
insert into COCHES.CARS (id, name, description, price, id_category) values (23, 'Continental', 'Lincoln', 34095.25, 3);
insert into COCHES.CARS (id, name, description, price, id_category) values (24, 'Roadster', 'Tesla', 70938.15, 4);
insert into COCHES.CARS (id, name, description, price, id_category) values (25, 'Savana 2500', 'GMC', 87477.26, 5);
insert into COCHES.CARS (id, name, description, price, id_category) values (26, 'Lumina', 'Chevrolet', 85899.39, 1);
insert into COCHES.CARS (id, name, description, price, id_category) values (27, 'A4', 'Audi', 10838.34, 2);
insert into COCHES.CARS (id, name, description, price, id_category) values (28, 'Tempo', 'Ford', 48096.25, 3);
insert into COCHES.CARS (id, name, description, price, id_category) values (29, 'Range Rover Sport', 'Land Rover', 32530.51, 4);
insert into COCHES.CARS (id, name, description, price, id_category) values (30, 'TrailBlazer', 'Chevrolet', 11688.41, 5);
insert into COCHES.CARS (id, name, description, price, id_category) values (31, 'xB', 'Scion', 30109.61, 1);
insert into COCHES.CARS (id, name, description, price, id_category) values (32, 'Grand Prix', 'Pontiac', 49865.18, 2);
insert into COCHES.CARS (id, name, description, price, id_category) values (33, 'riolet', 'Audi', 54580.75, 3);
insert into COCHES.CARS (id, name, description, price, id_category) values (34, 'XL-7', 'Suzuki', 97565.31, 4);
insert into COCHES.CARS (id, name, description, price, id_category) values (35, 'DeVille', 'Cadillac', 40859.0, 5);
insert into COCHES.CARS (id, name, description, price, id_category) values (36, 'QX', 'Infiniti', 93204.73, 1);
insert into COCHES.CARS (id, name, description, price, id_category) values (37, 'TSX', 'Acura', 63355.61, 2);
insert into COCHES.CARS (id, name, description, price, id_category) values (38, 'Optima', 'Kia', 74468.72, 3);
insert into COCHES.CARS (id, name, description, price, id_category) values (39, 'S-Class', 'Mercedes-Benz', 86591.84, 4);
insert into COCHES.CARS (id, name, description, price, id_category) values (40, 'Seville', 'Cadillac', 62729.93, 5);
insert into COCHES.CARS (id, name, description, price, id_category) values (41, 'Corolla', 'Toyota', 64569.88, 1);
insert into COCHES.CARS (id, name, description, price, id_category) values (42, 'Stylus', 'Isuzu', 72245.63, 2);
insert into COCHES.CARS (id, name, description, price, id_category) values (43, 'Dakota Club', 'Dodge', 82557.57, 3);
insert into COCHES.CARS (id, name, description, price, id_category) values (44, 'Altima', 'Nissan', 90860.33, 4);
insert into COCHES.CARS (id, name, description, price, id_category) values (45, 'Mirage', 'Mitsubishi', 70324.26, 5);
insert into COCHES.CARS (id, name, description, price, id_category) values (46, 'RS4', 'Audi', 87178.95, 1);
insert into COCHES.CARS (id, name, description, price, id_category) values (47, 'Wrangler', 'Jeep', 27466.28, 2);
insert into COCHES.CARS (id, name, description, price, id_category) values (48, 'Q', 'Infiniti', 71782.42, 3);
insert into COCHES.CARS (id, name, description, price, id_category) values (49, 'Mirage', 'Mitsubishi', 70226.2, 4);
insert into COCHES.CARS (id, name, description, price, id_category) values (50, 'Econoline E250', 'Ford', 85496.71, 5);
insert into COCHES.CARS (id, name, description, price, id_category) values (51, 'Escort', 'Ford', 58860.13, 1);
insert into COCHES.CARS (id, name, description, price, id_category) values (52, 'Equinox', 'Chevrolet', 72301.0, 2);
insert into COCHES.CARS (id, name, description, price, id_category) values (53, 'Galant', 'Mitsubishi', 98468.78, 3);
insert into COCHES.CARS (id, name, description, price, id_category) values (54, 'Spirit', 'Dodge', 9667.7, 4);
insert into COCHES.CARS (id, name, description, price, id_category) values (55, 'RL', 'Acura', 11803.95, 5);
insert into COCHES.CARS (id, name, description, price, id_category) values (56, 'Neon', 'Dodge', 71872.63, 1);
insert into COCHES.CARS (id, name, description, price, id_category) values (57, 'Legacy', 'Subaru', 20811.87, 2);
insert into COCHES.CARS (id, name, description, price, id_category) values (58, 'Model T', 'Ford', 11244.47, 3);
insert into COCHES.CARS (id, name, description, price, id_category) values (59, '57', 'Maybach', 68551.17, 4);
insert into COCHES.CARS (id, name, description, price, id_category) values (60, 'Clubman', 'MINI', 66741.31, 5);
insert into COCHES.CARS (id, name, description, price, id_category) values (61, 'ES', 'Lexus', 73844.98, 1);
insert into COCHES.CARS (id, name, description, price, id_category) values (62, 'MPV', 'Mazda', 67933.2, 2);
insert into COCHES.CARS (id, name, description, price, id_category) values (63, '2e', 'Aptera', 73404.9, 3);
insert into COCHES.CARS (id, name, description, price, id_category) values (64, 'Outback', 'Subaru', 7773.14, 4);
insert into COCHES.CARS (id, name, description, price, id_category) values (65, '62', 'Maybach', 49223.49, 5);
insert into COCHES.CARS (id, name, description, price, id_category) values (66, 'S10', 'Chevrolet', 75134.3, 1);
insert into COCHES.CARS (id, name, description, price, id_category) values (67, '1500', 'Chevrolet', 96524.26, 2);
insert into COCHES.CARS (id, name, description, price, id_category) values (68, 'Daewoo Magnus', 'Suzuki', 79718.04, 3);
insert into COCHES.CARS (id, name, description, price, id_category) values (69, 'Safari', 'GMC', 50815.33, 4);
insert into COCHES.CARS (id, name, description, price, id_category) values (70, 'Golf', 'Volkswagen', 54283.88, 5);
insert into COCHES.CARS (id, name, description, price, id_category) values (71, '458 Italia', 'Ferrari', 24711.34, 1);
insert into COCHES.CARS (id, name, description, price, id_category) values (72, 'F350', 'Ford', 94439.79, 2);
insert into COCHES.CARS (id, name, description, price, id_category) values (73, 'Caliber', 'Dodge', 37976.21, 3);
insert into COCHES.CARS (id, name, description, price, id_category) values (74, '2500', 'GMC', 99409.01, 4);
insert into COCHES.CARS (id, name, description, price, id_category) values (75, '9-5', 'Saab', 52437.55, 5);
insert into COCHES.CARS (id, name, description, price, id_category) values (76, 'V70', 'Volvo', 17548.41, 1);
insert into COCHES.CARS (id, name, description, price, id_category) values (77, 'Discovery', 'Land Rover', 84793.08, 2);
insert into COCHES.CARS (id, name, description, price, id_category) values (78, 'Escort', 'Ford', 21500.14, 3);
insert into COCHES.CARS (id, name, description, price, id_category) values (79, 'Esprit', 'Lotus', 81128.91, 4);
insert into COCHES.CARS (id, name, description, price, id_category) values (80, 'Aurora', 'Oldsmobile', 40092.58, 5);
insert into COCHES.CARS (id, name, description, price, id_category) values (81, 'Ranger', 'Ford', 29324.99, 1);
insert into COCHES.CARS (id, name, description, price, id_category) values (82, 'Commander', 'Jeep', 7674.84, 2);
insert into COCHES.CARS (id, name, description, price, id_category) values (83, 'Pathfinder', 'Nissan', 72231.59, 3);
insert into COCHES.CARS (id, name, description, price, id_category) values (84, 'Lancer', 'Mitsubishi', 27398.31, 4);
insert into COCHES.CARS (id, name, description, price, id_category) values (85, 'T100', 'Toyota', 79264.94, 5);
insert into COCHES.CARS (id, name, description, price, id_category) values (86, 'Sportvan G30', 'Chevrolet', 82993.53, 16);
insert into COCHES.CARS (id, name, description, price, id_category) values (87, 'Excursion', 'Ford', 93650.56, 2);
insert into COCHES.CARS (id, name, description, price, id_category) values (88, 'Caravan', 'Dodge', 54611.15, 3);
insert into COCHES.CARS (id, name, description, price, id_category) values (89, 'Navigator', 'Lincoln', 83565.04, 4);
insert into COCHES.CARS (id, name, description, price, id_category) values (90, 'Bonneville', 'Pontiac', 49817.55, 5);
insert into COCHES.CARS (id, name, description, price, id_category) values (91, 'M3', 'BMW', 79520.83, 1);
insert into COCHES.CARS (id, name, description, price, id_category) values (92, 'RX-7', 'Mazda', 91110.15, 2);
insert into COCHES.CARS (id, name, description, price, id_category) values (93, 'SL-Class', 'Mercedes-Benz', 81409.5, 3);
insert into COCHES.CARS (id, name, description, price, id_category) values (94, 'Silverado', 'Chevrolet', 47691.22, 4);
insert into COCHES.CARS (id, name, description, price, id_category) values (95, 'Bronco', 'Ford', 66262.74, 5);
insert into COCHES.CARS (id, name, description, price, id_category) values (96, 'Insight', 'Honda', 82496.58, 1);
insert into COCHES.CARS (id, name, description, price, id_category) values (97, 'Ram 1500', 'Dodge', 56723.72, 2);
insert into COCHES.CARS (id, name, description, price, id_category) values (98, 'Eurovan', 'Volkswagen', 42396.06, 3);
insert into COCHES.CARS (id, name, description, price, id_category) values (99, 'Pajero', 'Mitsubishi', 31576.35, 4);
insert into COCHES.CARS (id, name, description, price, id_category) values (100, 'Range Rover', 'Land Rover', 68914.62, 5);

CREATE TABLE COCHES.PURCHASE(
    id_category			INT,
    id_cars				INT,
    amount				INT,
    price				DECIMAL(9,2),
    date_of_purchase	DATE,
    CONSTRAINT pk_purchase PRIMARY KEY (id_category,id_cars),
    CONSTRAINT fk_purchase1 FOREIGN KEY (id_category) REFERENCES COCHES.CATEGORY(id),
    CONSTRAINT fk_purchase2 FOREIGN KEY (id_cars) REFERENCES COCHES.CARS(id)
    );

create table COCHES.USERS(
	username 		VARCHAR(50) PRIMARY KEY,
	pass 			VARCHAR(50),
	first_name 		VARCHAR(50),
	last_name 		VARCHAR(50),
	date_of_birth	DATE,
	gender 			VARCHAR(50),
	admin  			BOOLEAN
);

insert into COCHES.USERS values ('inma', MD5('inma'), 'inma', 'olias', '1990-08-23', 'Female', true);
insert into COCHES.USERS values ('fernando', MD5('fernando'), 'fernando', 'zamora', '1999-08-04', 'Male', false);

CREATE USER 'zamora'@'%' IDENTIFIED BY 'fernando';
GRANT ALL PRIVILEGES ON MEDICAMENTOS.* to 'zamora'@'%';