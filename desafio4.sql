SELECT 
    u.usuario AS usuario,
    IF(MAX(YEAR(r.reproduzida_data)) > 2020,
        'Usuário ativo',
        'Usuário inativo') AS 'condicao_usuario'
FROM
    SpotifyClone.usuarios u
        INNER JOIN
    SpotifyClone.reproduzida r ON u.usuario_id = r.usuario_id
GROUP BY u.usuario
ORDER BY u.usuario
