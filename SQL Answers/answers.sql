CREATE TABLE Movie (
  ID INTEGER PRIMARY KEY,
  Title TEXT,
  MediaTypeId INTEGER, 
  FOREIGN KEY(MediaTypeId) REFERENCES MediaType(MediaTypeId)
); 

INSERT INTO Movie
(Title, MediaTypeId)
VALUES
('Baby Driver', 3); 

SELECT * FROM Movie; 

-----------------------

ALTER TABLE Movie
ADD COLUMN GenreId INTEGER REFERENCES Genre(GenreId); 

SELECT * FROM Movie; 

-----------------------

UPDATE Movie
SET GenreId = 22 WHERE ID = 1; 
SELECT * FROM Movie; 

-----------------------

SELECT Album.Title, Artist.Name
FROM Album
JOIN Artist ON Album.ArtistId = Artist.ArtistId;

-----------------------

SELECT *
FROM Track
WHERE GenreID IN (SELECT GenreID
                  FROM Genre
                  WHERE Name = 'Jazz' OR 'Blues');

-----------------------
                  
UPDATE Employee
SET Phone = null WHERE EmployeeId = 1;

SELECT * 
FROM Employee
WHERE EmployeeID = 1;

-----------------------

SELECT * 
FROM Customer
WHERE Company IS null;

-----------------------

SELECT Artist.ArtistId, Artist.Name, count(Album.AlbumId)
FROM Artist
JOIN Album ON Artist.ArtistId = Album.ArtistId
GROUP BY Artist.ArtistId
ORDER BY count(Album.AlbumId) DESC;

-----------------------

SELECT DISTINCT Country
FROM Customer;

-----------------------

SELECT *
FROM Customer
WHERE Fax IS null;

DELETE 
FROM Customer
WHERE Fax IS null;

-----------------------