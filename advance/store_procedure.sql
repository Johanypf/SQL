DELIMITER //
CREATE PROCEDURE pr_all_users()
BEGIN
	SELECT * FROM Users;
END //


CALL pr_all_users ;

DELIMITER //
CREATE PROCEDURE p_age_users(IN age_param int)
BEGIN
	SELECT * FROM Users WHERE age >= age_param;
END //

CALL p_age_users(23);