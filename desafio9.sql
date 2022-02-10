SELECT
	COUNT(r.reproduzida_data) AS quantidade_musicas_no_historico
FROM
	SpotifyClone.usuarios u
JOIN
	SpotifyClone.reproduzida r
ON u.usuario_id = r.usuario_id
WHERE u.usuario = "Bill";