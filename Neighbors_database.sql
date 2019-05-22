SELECT * FROM tbl_habitat;

SELECT species_name FROM  tbl_species WHERE species_order = 3;

SELECT nutrition_type FROM tbl_nutrition WHERE nutrition_cost <= 600;

SELECT species_name FROM tbl_species WHERE species_nutrition >2201 AND species_nutrition <= 2206;

SELECT species_name AS [Species Name], nutrition_type AS [Nutrition Type]
		FROM tbl_species
		INNER JOIN tbl_nutrition ON nutrition_id = species_nutrition	
	;




CREATE TABLE tbl_neighbors_id (
	neighbor_id INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	neighbor_Fname VARCHAR (50) NOT NULL,
	neighbor_Lname VARCHAR (50)NOT NULL
	);
	
CREATE TABLE tbl_neighbors_contact (
	contact_id INT PRIMARY KEY NOT NULL IDENTITY(1000,1),
	neighbor INT NOT NULL CONSTRAINT fk_neighbor_id FOREIGN KEY REFERENCES tbl_neighbors_id,
	neighbor_address VARCHAR (50) NOT NULL,
	neighbor_apt INT NOT NULL,
	neighbor_phone VARCHAR (50)NOT NULL
	);

INSERT INTO tbl_neighbors_id
		(neighbor_Fname, neighbor_Lname)
		VALUES
		('John', 'Goetz'),
		('Wayne', 'Johnson'),
		('Shonna', 'Groves'),
		('Caroline', 'Morgan'),
		('Mary', 'Gold');

	SELECT * FROM tbl_neighbors_id

INSERT INTO tbl_neighbors_contact
		(neighbor, neighbor_address, neighbor_apt, neighbor_phone)
		VALUES
		(1, '2032 SW Merlo Ct', 222, '503-877-6841'),
		(2, '2024 SW Merlo Ct', 111, '503-235-8843'),
		(3, '2032 SW Merlo Ct', 120, '503-253-5481'),
		(4, '2040 SW Merlo Ct', 340, '503-652-9908'),
		(5, '2032 SW Merlo Ct', 219, '503-330-1191');

	SELECT * FROM tbl_neighbors_contact

SELECT
		neighbor_Fname, neighbor_Lname, neighbor_address, neighbor_apt, neighbor_phone
		FROM tbl_neighbors_id
		INNER JOIN tbl_neighbors_contact  ON neighbor_id = neighbor
		
		WHERE neighbor_address = '2032 SW Merlo Ct';