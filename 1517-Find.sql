SELECT user_id, name, mail
FROM Users
WHERE mail REGEXP "^[A-Za-z][a-zA-Z0-9-._]*\\@leetcode\\.com$"
;
