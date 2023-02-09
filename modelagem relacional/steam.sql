-- Cria o banco de dados usando UTF-8 e buscas case-insensitive.
CREATE DATABASE steam CHARACTER SET utf8 COLLATE utf8_general_ci;

-- Seleciona o banco de dados de trabalho.
USE steam;

-- Cria a tabela 'games'.
CREATE TABLE games (
    gam_id INT PRIMARY KEY,
    gam_name VARCHAR(255) NOT NULL,
    gam_release_date DATE NOT NULL, 
    gam_developer VARCHAR(255) NOT NULL,
    gam_platforms VARCHAR(255) NOT NULL,
    gam_genres VARCHAR(255) NOT NULL,
    gam_achievements INT NOT NULL,
    gam_positive_ratings INT NOT NULL,
    gam_negative_ratings INT NOT NULL,
    gam_average_playtime INT NOT NULL,
    gam_median_playtime INT NOT NULL,
    gam_price FLOAT NOT NULL
);

-- Cria a tabela 'media data'.
CREATE TABLE media_data (
    med_id INT PRIMARY KEY AUTO_INCREMENT,
    med_game INT NOT NULL,
    med_header_image BLOB,
    med_screenshots BLOB,
    med_background BLOB,
    med_movies BLOB,
    FOREIGN KEY (med_game) REFERENCES games (gam_id)
);

-- Cria a tabela 'description data'.
CREATE TABLE description_data (
    des_id INT PRIMARY KEY AUTO_INCREMENT,
    des_game INT NOT NULL,
    des_detailed MEDIUMTEXT,
    des_about_the_game TEXT,
    des_short_description TINYTEXT NOT NULL,
    FOREIGN KEY (des_game) REFERENCES games (gam_id)
);

-- Cria a tabela 'support info'.
CREATE TABLE support_info (
    sup_id  INT PRIMARY KEY AUTO_INCREMENT,
    sup_game INT NOT NULL,
    sup_website VARCHAR(255),
    sup_url VARCHAR(255),
    sup_email VARCHAR(255),
    FOREIGN KEY (sup_game) REFERENCES games (gam_id)
);

-- Cria a tabela 'requirements data'.
CREATE TABLE requirements_data (
    req_id INT PRIMARY KEY AUTO_INCREMENT,
    req_game INT NOT NULL,
    req_pc VARCHAR(255),
    req_mac VARCHAR(255),
    req_linux VARCHAR(255),
    req_minimum VARCHAR(255),
    req_recommended VARCHAR(255),
    FOREIGN KEY (req_game) REFERENCES games (gam_id)
);
