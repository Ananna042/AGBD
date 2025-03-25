SELECT * FROM crime_scene_report
where date = 20180115 and type = 'murder'and city = 'SQL City'

SELECT *
FROM person
WHERE address_street_name = 'Northwestern Dr'
ORDER BY address_number DESC
LIMIT 1

SELECT *
FROM person
WHERE address_street_name = 'Franklin Ave' AND name LIKE 'Annabel%' 

SELECT *
FROM interview
WHERE person_id = 14887 OR person_id = 16371