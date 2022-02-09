SELECT 
    m.musica AS cancao, COUNT(r.musica_id) AS reproducoes
FROM
    SpotifyClone.musicas m
        JOIN
    SpotifyClone.reproduzida r ON r.musica_id = m.musica_id
GROUP BY m.musica
ORDER BY reproducoes DESC , m.musica
LIMIT 2;