CREATE VIEW usersMostActive AS
-- Esta view mostra os 10 usuários mais ativos com base no total combinado de posts e comentários.
SELECT 
    u.user_id,
    u.name,
    (SELECT COUNT(*) FROM Posts WHERE user_id = u.user_id) AS total_posts,
    (SELECT COUNT(*) FROM Comments WHERE user_id = u.user_id) AS total_comments
FROM 
    Users u
GROUP BY 
    u.user_id, u.name
ORDER BY 
    (total_posts + total_comments) DESC
LIMIT 10;
