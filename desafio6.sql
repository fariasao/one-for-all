SELECT
	MIN(p.plano_preco) AS faturamento_minimo,
    MAX(p.plano_preco) AS faturamento_maximo,
    ROUND(AVG(p.plano_preco),2) AS faturamento_medio,
    SUM(p.plano_preco) AS faturamento_total
FROM SpotifyClone.planos p
JOIN SpotifyClone.usuarios u
ON p.plano_id = u.plano_id;