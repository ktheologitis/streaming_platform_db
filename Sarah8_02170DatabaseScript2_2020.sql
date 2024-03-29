USE STREAMING_PLATFORM ;
SELECT content_id, date_release  FROM DIGITAL_CONTENT 
GROUP BY content_id HAVING date_release > '2000-00-00';

SELECT * FROM COUNTRY
WHERE country_name IN('Denmark','South Korea','India','Greece')
ORDER BY subscription_price DESC ;

SELECT * FROM TV_SHOW NATURAL LEFT OUTER join EPISODE
GROUP BY content_id;

SELECT * FROM TV_SHOW NATURAL LEFT OUTER join EPISODE;

# Find whether a user has paid or not
DELIMITER $$
CREATE FUNCTION user_paid(vEmail VARCHAR(50)) RETURNS VARCHAR(3)
BEGIN
	DECLARE vDuePayment VARCHAR(3);
		SELECT payment_due INTO vDuePayment 
		FROM PLATFORM_USER
		WHERE email=vEmail;
	RETURN vDuePayment;
END;$$

DELIMITER $$
# Input a user's email and see how many movies/series he has seen so far
CREATE PROCEDURE users_digest(IN vEmail VARCHAR(50), OUT digest INT)
BEGIN
	SELECT Count(content_id) INTO digest
	FROM PLATFORM_USER, WATCHED
	WHERE PLATFORM_USER.email = vEmail AND WATCHED.email = vEmail;
END;$$

# Create trigger that ensures correct gender is passed when inserting new tuple in the actor table
DELIMITER $$
CREATE TRIGGER check_gender
BEFORE INSERT ON ACTOR FOR EACH ROW
BEGIN
	IF (NEW.gender NOT IN ("MALE", "FEMALE")) THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = "Please insert MALE or FEMALE as a gender value";
	END IF;
END;$$

# Create transaction inside procedure that denies movie insertion with unreasonable duration
# This procedure, also provides an easier way to insert movies, 
# by inserting the respective information both in DIGITAL_CONTENT and MOVIE at once.
DELIMITER $$
CREATE PROCEDURE add_movie(
	IN content_id VARCHAR (8), 
    IN title VARCHAR(50), 
    IN producer_firm VARCHAR(50),
    IN origin VARCHAR(50),
    IN genre VARCHAR(30),
    IN date_release DATE,
    IN explicit_content_ind BOOLEAN,
    IN director VARCHAR(30),
    IN duration TIME,
    OUT vStatus VARCHAR(100))
BEGIN 
	START TRANSACTION;
	INSERT DIGITAL_CONTENT VALUES 
		(content_id, title, 'MOVIE', producer_firm, origin, genre, date_release, explicit_content_ind, director);
	INSERT MOVIE VALUES 
		(content_id, duration);
	IF duration < '06:00:00' THEN
		SET vStatus = "Movie was inserted successfully"; COMMIT;
	ELSE
		SET vStatus = "Too long movie file, check for mistake in duration input"; ROLLBACK;
	END IF;
END;$$

DELIMITER ;
# Use user_paid function to find users who did not pay
SELECT first_name, last_name
FROM PLATFORM_USER
WHERE user_paid(email)='NO';

# Use users_digest procedure returns how much content (count of movies, series) a particular user has seen
CALL users_digest('sks@gmail.com', @digest);
SELECT @digest;

# Insert automatically new movie in DIGITAL_CONTENT table and its respective duration in the MOVIE table
# If wrong unreasonable (too long) duration in passed, insertion is cancelled in both tables.
CALL add_movie('ST100095','Los Abrazos Rotos','AlmoProductions','Spain','Drama','2008-08-08',FALSE,'Pedro Almodovar', '06:50:00', @sts);
SELECT @sts;
					 
# EVENT
# Below it's an event that every 1 minute it goes to platform_user table and appends ' 1' to the first name of every record.
SET GLOBAL event_scheduler = 1;
CREATE EVENT InsertToPlatformUser ON SCHEDULE EVERY 1 MINUTE DO UPDATE PLATFORM_USER SET first_name = CONCAT(first_name, ' 1');					 
					 
################# THIS WILL THROW AN ERROR AND IT IS INTENTIONAL ##############################################
# Check id actor with wrong gender value will be inserted, or be denied by our trigger
INSERT ACTOR VALUES
('AC100050','Penelope','Cruise','1968-07-23','Spain','famale');
					 
