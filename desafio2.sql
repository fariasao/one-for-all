SELECT 
    COUNT(musica) AS cancoes,
    (SELECT 
            COUNT(artista)
        FROM
            SpotifyClone.artistas) AS artistas,
    (SELECT 
            COUNT(album)
        FROM
            SpotifyClone.albuns) AS albuns
FROM
    SpotifyClone.musicas;