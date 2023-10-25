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
    PRIMARY KEY(id_player),
    UNIQUE KEY (email),
    UNIQUE KEY (pseudo)
    );

    
CREATE TABLE games(
    id_game INT NOT NULL AUTO_INCREMENT,
    game_name VARCHAR(40) NOT NULL,
    PRIMARY KEY(id_game)
    );



CREATE TABLE messages(
    id_message INT NOT NULL AUTO_INCREMENT,
    id_game INT NOT NULL,
    id_sender INT NOT NULL,
    comments TEXT NOT NULL,
    date_comment DATETIME NOT NULL,
    PRIMARY KEY(id_message),
    CONSTRAINT fk_messages_games FOREIGN KEY (id_game) REFERENCES games(id_game) ON DELETE CASCADE,
    CONSTRAINT fk_messages_players FOREIGN KEY (id_sender) REFERENCES players(id_player) ON DELETE CASCADE
    );


CREATE TABLE scores(
    id_score INT NOT NULL AUTO_INCREMENT,
    id_player INT NOT NULL,
    id_game INT NOT NULL,
    game_strength INT NOT NULL,
    game_score INT NOT NULL,
    game_date DATETIME NOT NULL,
    PRIMARY KEY(id_score),
    CONSTRAINT fk_scores_players FOREIGN KEY (id_player) REFERENCES players(id_player) ON DELETE CASCADE,
    CONSTRAINT fk_scores_games FOREIGN KEY (id_game) REFERENCES games(id_game) ON DELETE CASCADE
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
INSERT INTO players (email,player_password,pseudo,date_sign_up,date_last_login)
VALUES ('jon.com','691388b7f8a1cb32890e337055d8893444fd237cfe85d111430d093fd2ee4f91','jon',NOW(),NOW());


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
WHERE email = 'jon2211@gmail.com' 
AND player_password = '691388b7f8a1cb32890e337055d8893444fd237cfe85d111430d093fd2ee0000';


/* Story 6 */ 
INSERT INTO games(game_name) 
VALUES('The Power Of Memory');


/* Story 7 */
SELECT S.*, P.* 
FROM scores AS S
LEFT JOIN players AS P ON S.id_player = P.id_player

/* Story 8 */ 
SELECT g.game_name, p.pseudo, s.game_strength, s.game_score
FROM games AS g
LEFT JOIN scores AS s ON g.id_game = s.id_game
LEFT JOIN players AS p ON s.id_player = p.id_player
WHERE g.game_name = 'The Power Of Memory'
ORDER BY g.game_name, s.game_strength, s.game_score ASC;
/*      p.pseudo = "jonathan" 
        g.game_strength = "2" */

/* Story 9 */
INSERT INTO scores(id_player, id_game, game_strength, game_score, game_date)
VALUES(1,1,54,1580, NOW()) 
ON DUPLICATE KEY UPDATE
game_strength = 3,
game_score = 108,
game_date = NOW();


/* story 10 */
INSERT INTO messages ( id_game , id_sender, comments ,date_comment)
VALUES (1,2,'Bonjour !',NOW());SELECT * FROM `messages` WHERE 1;


/* Story 11 */
SELECT m.comments, p.pseudo, m.date_comment,
CASE WHEN m.id_sender = '2'
THEN TRUE
ELSE FALSE
END AS isSender
FROM messages AS m
LEFT JOIN players AS p ON m.id_sender = p.id_player
WHERE m.date_comment >= NOW() - INTERVAL 24 HOUR
ORDER BY m.date_comment DESC;

/* Story 12 */
SELECT * , p.pseudo
FROM scores as s
LEFT JOIN players AS p
	ON p.id_player = s.id_player
WHERE pseudo LIKE '%ath%';

/* Story 13 */
CREATE TABLE private_messages(
    id_private_message INT NOT NULL AUTO_INCREMENT,
    id_first_user INT NOT NULL,
    id_sec_user INT NOT NULL,
    comments TEXT NOT NULL,
    is_read BOOLEAN NOT NULL,
    date_send_comment DATETIME NOT NULL,
    date_read_comment DATETIME,
    PRIMARY KEY (id_private_message),
    CONSTRAINT fk_private_players FOREIGN KEY (id_first_user) REFERENCES players(id_player) ON DELETE CASCADE,
    CONSTRAINT fk_private_players2 FOREIGN KEY (id_sec_user) REFERENCES players(id_player) ON DELETE CASCADE
);

/* STORY 14 */
INSERT INTO private_messages(id_first_user, id_sec_user, comments, is_read, date_send_comment, date_read_comment) 
VALUES('1','2','coucou ça va', false, '2023-10-24 10:34:09', NULL),
('2','1','ça va et toi ?', false, '2023-10-24 10:36:29', NULL),
('1','2','bien, tfq ?', false, '2023-10-24 10:37:12', NULL),
('2','1','Je joue à Power Of Memory', false, '2023-10-24 10:39:21', NULL),
('1','2','Oh moi aussi !', false, '2023-10-24 10:40:21', NULL),
('2','1','Cool tu me rejoins ?', false, '2023-10-24 10:40:21', NULL),
('1','5','salut', false, '2023-10-24 11:05:42', NULL),
('4','1','aurevoir', false, '2023-10-24 11:10:11', NULL),
('1','4','Salut tu vas bien', false, '2023-10-24 11:15:22', NULL),
('2','5','Tranquille tu vien jouer a POM', false, '2023-10-24 11:20:15', NULL),
('4','2','Flemme', false, '2023-10-24 11:21:15', NULL),
('4','2','Tu viens lancer une game ?', false, '2023-10-24 11:24:15', NULL),
('2','4','non pas avec toi', false,'2023-10-24 11:27:15', NULL),
('4','2','pas cool ça', false, '2023-10-24 11:28:19', NULL),
('1','3','Vien POM je te detruis', false, '2023-10-24 11:41:13', NULL),
('1','5','Non', false, '2023-10-24 11:43:13', NULL),
('5','2','comment tu vas', false, '2023-10-24 11:44:13', NULL),
('2','5','tranquillement', false, '2023-10-24 11:45:13', NULL),
('5','2','cool alors', false, '2023-10-24 11:46:08', NULL),
('4','1','tfq ?', false,'2023-10-24 11:58:02', NULL);


DELETE FROM private_messages 
WHERE id_private_message=12;

UPDATE private_messages 
SET comments = 'message modifie' 
WHERE id_private_message=14; 


/* Story 15 */
SELECT pm.id_first_user, pm.id_sec_user, pm.comments, pm.date_send_comment, pm.date_read_comment, pm.is_read
FROM private_messages AS pm
WHERE pm.id_first_user = 1 AND pm.id_sec_user IN (
    SELECT id_sec_user
    WHERE id_first_user = 1
    GROUP BY id_sec_user
    HAVING MAX(date_send_comment) = pm.date_send_comment
)
ORDER BY pm.date_send_comment DESC;


/* Story 18 */
