/* Story 1*/
CREATE DATABASE power_of_memorys CHARACTER SET utf8;
USE power_of_memorys;
/*Story 5*/
SELECT * FROM players WHERE email = 'adresse_email_utilisateur' AND player_password = 'mot_de_passe_utilisateur';

/*Story 7*/
SELECT pseudo, game_strength, game_score
FROM scores
ORDER BY game_strength, game_score;



CREATE TABLE players(
    id_player INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(40) NOT NULL,
    player_password VARCHAR(256) NOT NULL,
    pseudo VARCHAR(20) NOT NULL,
    date_sign_up DATETIME NOT NULL,
    date_last_login DATETIME NOT NULL,
    PRIMARY KEY(id_player)
    );

    

CREATE TABLE scores(
    id_score INT NOT NULL AUTO_INCREMENT,
    id_player INT NOT NULL,
    id_game INT NOT NULL,
    game_strength INT NOT NULL,
    game_score INT NOT NULL,
    game_date DATETIME NOT NULL,
    PRIMARY KEY(id_score)
    );

CREATE TABLE messages(
    id_message INT NOT NULL AUTO_INCREMENT,
    id_game INT NOT NULL,
    id_sender INT NOT NULL,
    comment TEXT NOT NULL,
    date_comment DATETIME NOT NULL,
    PRIMARY KEY(id_message)
    );

CREATE TABLE games(
    id_game INT NOT NULL AUTO_INCREMENT,
    game_name VARCHAR(40) NOT NULL,
    PRIMARY KEY(id_game)
    );

/* Story 3 */
INSERT INTO players (email,player_password,pseudo,date_sign_up),
VALUES ('jonathan42@gmail.com','691388b7f8a1cb32890e337055d8893444fd237cfe85d111430d093fd2ee4f91','jonathan',NOW());


/* Story 4 */
UPDATE players
SET player_password = '691388b7f8a1cb32890e337055d8893444fd237cfe85d111430d093fd2ee0000'
WHERE id_player = 1;

UPDATE players
SET email = 'jon2211@gmail.com'
WHERE id_player = 1;


/* Story 6 */ 
INSERT INTO games(game_name) 
VALUES('The Power Of Memory');





