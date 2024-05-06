SELECT * FROM Friend
SELECT * FROM Address
SELECT * FROM Pet

SELECT DISTINCT p.AnimalKind FROM Friend f
INNER JOIN Pet p ON f.FriendId = p.FriendId
INNER JOIN Address a ON f.AddressId = a.AdressId
WHERE a.Country = 'Sweden'


SELECT Country, COUNT(*) FROM Address
GROUP BY Country

