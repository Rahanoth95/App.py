CREATE TABLE games (
  game_id NUMBER PRIMARY KEY,
  title VARCHAR2(100),
  genre VARCHAR2(50),
  release_year NUMBER,
  publisher VARCHAR2(100)
);

INSERT INTO games (game_id, title, genre, release_year, publisher)
VALUES (1, 'Super Mario Bros.', 'Platformer', 1985, 'Nintendo');

INSERT INTO games (game_id, title, genre, release_year, publisher)
VALUES (2, 'The Legend of Zelda', 'Action-Adventure', 1986, 'Nintendo');

INSERT INTO games (game_id, title, genre, release_year, publisher)
VALUES (3, 'Final Fantasy VII', 'Role-Playing Game', 1997, 'Square Enix');

INSERT INTO games (game_id, title, genre, release_year, publisher)
VALUES (4, 'Minecraft', 'Sandbox', 2011, 'Mojang Studios');

SELECT * FROM games;