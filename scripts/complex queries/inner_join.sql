SELECT username, email, first_name, last_name, phone_number, age FROM user
INNER JOIN profile
ON profile.user_id = user.id