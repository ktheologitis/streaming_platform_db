CREATE DATABASE streaming_platform;
USE streaming_platform;

CREATE TABLE digital_content
(
    content_id VARCHAR(8),
    title VARCHAR(50) NOT NULL,
    content_type CHAR(7),
    producer_firm VARCHAR(50),
    origin VARCHAR(50) NOT NULL,
    genre VARCHAR(30) NOT NULL,
    date_release DATE NOT NULL,
    explicit_content_ind BOOLEAN,
    director VARCHAR(30),
    PRIMARY KEY (content_id)
);

CREATE TABLE actor
(
    actor_id VARCHAR(8),
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    date_of_birth DATE NOT NULL,
    country_of_origin VARCHAR(50) NOT NULL,
    gender CHAR(6),
    PRIMARY KEY (actor_id)
);

CREATE TABLE cast
(
    content_id VARCHAR(8),
    actor_id VARCHAR(8) NOT NULL,
    PRIMARY KEY (content_id , actor_id),
    FOREIGN KEY (content_id)
        REFERENCES digital_content (content_id)
        ON DELETE CASCADE,
    FOREIGN KEY (actor_id)
        REFERENCES actor (actor_id)
        ON DELETE CASCADE
);


CREATE TABLE movie
(
    content_id VARCHAR(8),
    duration TIME,
    PRIMARY KEY (content_id),
    FOREIGN KEY (content_id)
        REFERENCES digital_content (content_id)
        ON DELETE CASCADE
);


CREATE TABLE tv_show
(
    content_id VARCHAR(8),
    number_of_seasons INT(2),
    PRIMARY KEY (content_id),
    FOREIGN KEY (content_id)
        REFERENCES digital_content (content_id)
        ON DELETE CASCADE
);


CREATE TABLE episode
(
    content_id VARCHAR(8),
    season_number INT(2) NOT NULL,
    episode_number INT(4),
    episode_name VARCHAR(50) NOT NULL,
    date_aired DATE NOT NULL,
    duration TIME,
    PRIMARY KEY (content_id , season_number , episode_number),
    FOREIGN KEY (content_id)
        REFERENCES digital_content (content_id)
        ON DELETE CASCADE
);

CREATE TABLE country
(
    country_name VARCHAR(50),
    subscription_price FLOAT(2),
    currency CHAR(3),
    PRIMARY KEY (country_name)
);

CREATE TABLE platform_user
(
    email VARCHAR(50),
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender CHAR(6),
    date_of_birth DATE NOT NULL,
    country_name VARCHAR(50) NOT NULL,
    date_signup DATE,
    payment_due CHAR(3),
    PRIMARY KEY (email),
    FOREIGN KEY (country_name)
        REFERENCES country (country_name)
        ON DELETE CASCADE
);

CREATE TABLE watched
(
    email VARCHAR(50),
    content_id VARCHAR(8),
    PRIMARY KEY (email , content_id),
    FOREIGN KEY (content_id)
        REFERENCES digital_content (content_id)
        ON DELETE CASCADE,
    FOREIGN KEY (email)
        REFERENCES platform_user (email)
        ON DELETE CASCADE
);

CREATE TABLE availability
(
    content_id VARCHAR(50),
    country_name VARCHAR(50),
    PRIMARY KEY (content_id , country_name),
    FOREIGN KEY (country_name)
        REFERENCES country (country_name)
        ON DELETE CASCADE,
    FOREIGN KEY (content_id)
        REFERENCES digital_content (content_id)
        ON DELETE CASCADE
);
