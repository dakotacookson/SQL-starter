



SELECT * 
FROM   genre 

INSERT INTO artist 
            (artistname, 
             yearestablished) 
VALUES      ( 'Panic at the disco', 
              2004); 

SELECT * 
FROM   artist 






INSERT INTO album 
            (title, 
             releasedate, 
             albumlength, 
             label, 
             artistid, 
             genreid) 
VALUES      ( 'Pray For the Wicked', 
              '06/22/2018', 
              3411, 
              '	Fueled by Ramen', 
              29, 
              7 ); 





SELECT * 
FROM   album 

INSERT INTO song 
            (title, 
             songlength, 
             releasedate, 
             genreid, 
             artistid, 
             albumid) 
VALUES      ( 'Say Amen', 
              39, 
              '06/22/2018', 
              7, 
              29, 
              29); 





SELECT * 
FROM   song 

DELETE FROM album 
WHERE  id = 24; 

SELECT title, 
       artistname 
FROM   album, 
       artist 
WHERE  album.id = artist.id 








SELECT s.title       AS song, 
       a.title       AS album, 
       ar.artistname AS artist 
FROM   album a 
       INNER JOIN song s 
               ON s.artistid = a.id 
       INNER JOIN artist ar 
               ON ar.id = a.id 







SELECT * 
FROM   album 

SELECT Count(artistid) [songs in album  count] 
FROM   album 
GROUP  BY artistid; 


SELECT Count(ArtistId) [songs by artist count] 
FROM   Song 
GROUP  BY artistid; 

SELECT Count(GenreId) [songs by genere count] 
FROM   Song 
GROUP  BY GenreId; 










SELECT TOP 1 Max(albumlength), 
             title 
FROM   album 
GROUP  BY albumlength, 
          title 
ORDER  BY Max(albumlength) DESC 




SELECT TOP 1 Max(SongLength), 
             title 
FROM   song 
GROUP  BY SongLength, 
          title 
ORDER  BY Max(SongLength) DESC 




SELECT TOP 1 Max(songlength), 
             album.title, 
             song.title 
FROM   album 
       JOIN song 
         ON album.id = song.albumid 
GROUP  BY songlength, 
          album.title, 
          song.title 
ORDER  BY Max(songlength) DESC 



