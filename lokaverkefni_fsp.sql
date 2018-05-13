/*
Sýnið heiti allra flytjanda og fjölda laga sem hver og einn á
*/

/*
SELECT song_name, label_name 
FROM lagalisti 
JOIN utgefandi ON lagalisti.utgefandi_ID = utgefandi.utgefandi_ID 
WHERE artist_name='Sabaton'
*/

/*
SELECT song_name, length, song_genre 
FROM lagalisti 
JOIN tegund ON lagalisti.tegund_ID = tegund.tegund_ID 
WHERE song_genre = 'Pop'
*/

/*
SELECT song_name, length, release_date 
FROM lagalisti 
WHERE length>4 
ORDER BY length
*/

/*
SELECT song_name, COUNT(song_name) AS Fjöldi 
FROM lagaval 
GROUP BY song_name 
ORDER BY COUNT(song_name) 
DESC
LIMIT 1
*/

/*
SELECT song_name, artist_name, length 
FROM lagalisti 
ORDER BY length 
DESC 
LIMIT 5
*/

/*
SELECT song_genre, COUNT(song_name) 
FROM lagalisti 
JOIN tegund ON lagalisti.tegund_ID = tegund.tegund_ID
GROUP BY song_genre
ORDER BY COUNT(song_name)
DESC
LIMIT 3
*/

/*
SELECT COUNT(song_name) AS Fjöldi 
FROM lagalisti 
WHERE song_name LIKE 'C%' AND song_name LIKE '%s%'
*/

/*
SELECT ROUND(SUM(length)/COUNT(length),2) 
AS Meðallengd 
FROM lagalisti 
*/

/*
SELECT artist_name, COUNT(song_name) AS 'Fjöldi laga' 
FROM lagalisti 
GROUP BY artist_name
*/

