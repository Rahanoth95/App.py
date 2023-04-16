CREATE TABLE doggo(
dog_id NUMBER PRIMARY KEY,
breed VARCHAR2(100),color VARCHAR2(50),
dog_age NUMBER, dog_weight NUMBER) ;

INSERT INTO doggo (dog_id, breed, color, dog_age, dog_weight) VALUES (1, 'Golden Retriever', 'Golden', 3, 35);
INSERT INTO doggo (dog_id, breed, color, dog_age, dog_weight) VALUES (2, 'Golden Doodle', 'White', 2, 50);
INSERT INTO doggo (dog_id, breed, color, dog_age, dog_weight) VALUES (3, 'PitBull', 'Gray', 1, 39);
INSERT INTO doggo (dog_id, breed, color, dog_age, dog_weight) VALUES (4, 'Chihuahua', 'Burgundy', 4, 5);
SELECT * FROM doggo;