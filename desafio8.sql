SELECT 
    ar.artista AS artista, a.album AS album
FROM
    SpotifyClone.albuns a
        INNER JOIN
    SpotifyClone.artistas AS ar ON ar.artista = 'Walter Phoenix'
        AND ar.artista_id = a.artista_id
GROUP BY a.album , ar.artista
ORDER BY a.album;