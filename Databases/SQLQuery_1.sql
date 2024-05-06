USE music;
GO

INSERT INTO MusicGroups(Name, EstablishedYear)
VALUES
    ('AC/DC', 1973),
    ('Bob Dylan', 1962),
    ('Bob Marley', 1967)

INSERT INTO Artists(FirstName, LastName, MusicGroupId)
VALUES
    ('Bon', 'Scott', 1),
    ('Angus', 'Young', 1),
    ('Robert', 'Zimmerman', 2),
    ('Robert', 'Marley', 3),
    ('Rita', 'Marley', 3)

INSERT INTO Albums(Name, ReleaseYear, MusicGroupId)
VALUES
    ('Kaya', 1974, 3),
    ('High Voltage', 1977, 1),
    ('Infidels', 1979, 2)

UPDATE MusicGroups
SET MostSoldAlbumId = 1
WHERE MusicGroupId = 3