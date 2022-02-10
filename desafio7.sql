SELECT 
    ar.artista AS artista,
    a.album AS album,
    COUNT(s.artista_id) AS seguidores
FROM
    SpotifyClone.albuns a
        INNER JOIN
    SpotifyClone.artistas AS ar ON ar.artista_id = a.artista_id
        INNER JOIN
    SpotifyClone.seguindo AS s ON s.artista_id = ar.artista_id
GROUP BY a.album , ar.artista
ORDER BY seguidores DESC , artista , album;