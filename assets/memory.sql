CREATE DATABASE power_of_memory CHARACTER SET utf8;
USE power_of_memory ;
CREATE TABLE player(
    id_player INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(40) NOT NULL,
    player_password VARCHAR(256) NOT NULL,
    pseudo VARCHAR(20) NOT NULL,
    date_sign_up DATETIME NOT NULL,
    date_last_login DATETIME NOT NULL,
    PRIMARY KEY(id_player)
    );

    CREATE TABLE message(
        id_message INT NOT NULL AUTO_INCREMENT,
        id_game INT NOT NULL,
        id_sender INT NOT NULL,
        comment TEXT NOT NULL,
        date_comment DATETIME NOT NULL,
        PRIMARY KEY(id_message)
    );
