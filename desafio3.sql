SELECT
	u.usuario AS usuario,
    COUNT(r.musica_id) AS qtde_musicas_ouvidas,
    ROUND((SUM(m.musica_segundos) / 60), 2) AS total_minutos
FROM SpotifyClone.usuarios AS u
JOIN SpotifyClone.reproduzida AS r
JOIN SpotifyClone.musicas AS m
WHERE u.usuario_id = r.usuario_id
AND r.musica_id = m.musica_id
GROUP BY u.usuario
ORDER BY u.usuario;
