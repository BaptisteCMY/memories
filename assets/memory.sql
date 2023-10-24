/* Story 1 */
CREATE DATABASE power_of_memorys CHARACTER SET utf8;
USE power_of_memorys;
CREATE TABLE players(
    id_player INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(40) NOT NULL,
    player_password VARCHAR(256) NOT NULL,
    pseudo VARCHAR(20) NOT NULL,
    date_sign_up DATETIME NOT NULL,
    date_last_login DATETIME NOT NULL,
    PRIMARY KEY(id_player)
    UNIQUE KEY (email)
    UNIQUE KEY (pseudo)
    );

    

CREATE TABLE scores(
    id_score INT NOT NULL AUTO_INCREMENT,
    id_player INT NOT NULL,
    id_game INT NOT NULL,
    game_strength INT NOT NULL,
    game_score INT NOT NULL,
    game_date DATETIME NOT NULL,
    PRIMARY KEY(id_score)
    CONSTRAINT fk_scores_players FOREIGN KEY (id_player) REFERENCES players(id_player) ON DELETE CASCADE
    CONSTRAINT fk_scores_games FOREIGN KEY (id_game) REFERENCES games(id_game) ON DELETE CASCADE
    );

CREATE TABLE message(
    id_message INT NOT NULL AUTO_INCREMENT,
    id_game INT NOT NULL,
    id_sender INT NOT NULL,
    comment TEXT NOT NULL,
    date_comment DATETIME NOT NULL,
    PRIMARY KEY(id_message)
    CONSTRAINT fk_messages_games FOREIGN KEY (id_game) REFERENCES games(id_game) ON DELETE CASCADE
    CONSTRAINT fk_messages_players FOREIGN KEY (id_sender) REFERENCES players(id_player) ON DELETE CASCADE


    );

CREATE TABLE games(
    id_game INT NOT NULL AUTO_INCREMENT,
    game_name VARCHAR(40) NOT NULL,
    PRIMARY KEY(id_game)
    );


/* Story 2*/
INSERT INTO players(email, player_password, pseudo, date_sign_up, date_last_login) 
VALUES  ('jonathan42@gmail.com', '691388b7f8a1cb32890e337055d8893444fd237cfe85d111430d093fd2ee4f91', 'jonathan', NOW(),NOW()),
        ('mathieux45@gmail.com', '854f95641493b591d4b51d981e46f1ad9269bcd8bda39f45c7e86767173a4d22', 'mathieu', NOW(),NOW()),
        ('jerome.dubois@orange.fr', 'ebbcab908c6338fcc4c8eb0b3ca3900bb0129f0259b2faaf5987221df27f4795', 'jerome', NOW(),NOW()),
        ('mathis.dubleuil@sfr.fr', '7b5c862d4a2e5f70fc83fb6b6603cf8488872a414f6a1b1776ccd32bcc31e45c', 'mathisgaming', NOW(),NOW()),
        ('antoine.dubleuil@sfr.fr', 'f270398c8432ab9540cd0832d950973f170061284aa38012c2fbf80f7fb28370', 'antoinegaming', NOW(),NOW());

INSERT INTO scores(id_player, id_game, game_strength, game_score,  game_date) 
VALUES  ( 1, 1, 1, 1580, NOW()),
        ( 1, 1, 1, 1345, NOW()),
        ( 1, 1, 1, 1690, NOW()),
        ( 1, 1, 1, 1650, NOW()),
        ( 1, 1, 1, 1845, NOW()),
        ( 2, 1, 1, 1580, NOW()),
        ( 2, 1, 1, 1345, NOW()),
        ( 2, 1, 1, 1690, NOW()),
        ( 2, 1, 1, 1650, NOW()),
        ( 2, 1, 1, 1845, NOW()),
        ( 3, 1, 1, 1580, NOW()),
        ( 3, 1, 1, 1345, NOW()),
        ( 3, 1, 1, 1690, NOW()),
        ( 3, 1, 1, 1650, NOW()),
        ( 3, 1, 1, 1845, NOW()),
        ( 4, 1, 1, 1580, NOW()),
        ( 4, 1, 1, 1345, NOW()),
        ( 4, 1, 1, 1690, NOW()),
        ( 4, 1, 1, 1650, NOW()),
        ( 4, 1, 1, 1845, NOW()),
        ( 5, 1, 1, 1580, NOW()),
        ( 5, 1, 1, 1345, NOW()),
        ( 5, 1, 1, 1690, NOW()),
        ( 5, 1, 1, 1650, NOW()),
        ( 5, 1, 1, 1845, NOW());

INSERT INTO messages(id_game, id_sender, comment, date_comment) 
VALUES  ('1', '1','cc', NOW()),
        ('1', '1','cc', NOW()),
        ('1', '1','cc', NOW()),
        ('1', '1','cc', NOW()),
        ('1', '1','cc', NOW()),
        ('2', '1','cc', NOW()),
        ('2', '1','cc', NOW()),
        ('2', '1','cc', NOW()),
        ('2', '1','cc', NOW()),
        ('2', '1','cc', NOW()),
        ('3', '1','cc', NOW()),
        ('3', '1','cc', NOW()),
        ('3', '1','cc', NOW()),
        ('3', '1','cc', NOW()),
        ('3', '1','cc', NOW()),
        ('4', '1','cc', NOW()),
        ('4', '1','cc', NOW()),
        ('4', '1','cc', NOW()),
        ('4', '1','cc', NOW()),
        ('4', '1','cc', NOW()),
        ('5', '1','cc', NOW()),
        ('5', '1','cc', NOW()),
        ('5', '1','cc', NOW()),
        ('5', '1','cc', NOW()),
        ('5', '1','cc', NOW());


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


/* Story 5 */ 
SELECT * 
FROM players 
WHERE email = 'adresse_email_utilisateur' 
AND player_password = 'mot_de_passe_utilisateur';


/* Story 6 */ 
INSERT INTO games(game_name) 
VALUES('The Power Of Memory');


/* Story 7 */
SELECT S.*, P.* 
FROM scores AS S
INNER JOIN players AS P ON S.id_player = P.id_player

/* Story 8 */ 
SELECT g.game_name, p.pseudo, s.game_strength, s.game_score
FROM games AS g
INNER JOIN scores AS s ON g.id_game = s.id_game
INNER JOIN players AS p ON s.id_player = p.id_player
ORDER BY g.game_name, g.game_strength,s.game_score ASC;
WHERE   g.game_name = "The Power Of Memory";
/*      p.pseudo = "jonathan" 
        g.game_strength = "2" */


/* story 10 */
INSERT INTO message ( id_game , id_sender, comment ,date_comment)
FROM message
VALUES (1,2,'Bonjour !',NOW());


/* Story 11 */
SELECT m.comment, p.pseudo, m.date_comment
CASE WHEN m.id_sender = '5' 
THEN TRUE 
ELSE FALSE 
END AS isSender
FROM messages AS m
INNER JOIN players AS p ON m.id_sender = p.id_player
WHERE m.date_comment >= NOW() - INTERVAL 24 HOUR
ORDER BY m.date_comment DESC;

/* Story 12 */
SELECT *
FROM scores
WHERE pseudo = %'au'%
