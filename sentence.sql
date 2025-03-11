SELECT * FROM INHABITANT
SELECT * FROM INHABITANT WHERE STATE = "friendly"
SELECT * FROM INHABITANT WHERE STATE = "friendly" and job = "weaponsmith"
SELECT * FROM INHABITANT WHERE STATE = "friendly" and job LIKE '%smith'
SELECT personid from inhabitant where name = 'Stranger'
SELECT gold from inhabitant where name = 'Stranger'
SELECT * FROM ITEM WHERE OWNER IS NULL
UPDATE ITEM SET OWNER = 20  WHERE OWNER IS NULL
select * from item where owner = 20
SELECT * FROM INHABITANT WHERE STATE = 'friendly' AND job = 'dealer' OR job = 'merchant'
UPDATE ITEM SET OWNER = 15 WHERE item = 'ring' or item = 'teapot'
                                