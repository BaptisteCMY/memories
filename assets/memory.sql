/* story 1 */
CREATE DATABASE power_of_memory CHARACTER SET utf8;
ENGINE = INNODB

USE power_of_memory ;

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
    CONSTRAINT fk_scores_players FOREIGN KEY (id_player) REFERENCES players(id_player) ON DELETE CASCADE
    CONSTRAINT fk_scores_games FOREIGN KEY (id_game) REFERENCES games(id_game) ON DELETE CASCADE
    );

CREATE TABLE messages(
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


/* Story 4 */
UPDATE players
SET player_password = "jnbsnljsnvjnslnsnljsnvznznvzlnvps"
WHERE id_player = 2

UPDATE players
SET email = "azerty@gmail.com"
WHERE id_player = 3

