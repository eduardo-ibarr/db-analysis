CREATE VIEW userEngageDetailedAnalysis AS
-- Esta view identifica os usuários com maior engajamento (likes, shares, comentários) e atividade de postagem.
SELECT 
    u.user_id,
    u.name,
    COUNT(DISTINCT p.post_id) AS total_posts,
    COUNT(DISTINCT CASE WHEN i.type = 'Like' THEN i.interaction_id END) AS total_likes,
    COUNT(DISTINCT CASE WHEN i.type = 'Share' THEN i.interaction_id END) AS total_shares,
    COUNT(DISTINCT c.comment_id) AS total_comments
FROM 
    Users u
LEFT JOIN Posts p ON u.user_id = p.user_id
LEFT JOIN Interactions i ON u.user_id = i.user_id
LEFT JOIN Comments c ON u.user_id = c.user_id
GROUP BY 
    u.user_id, u.name
ORDER BY 
    (COUNT(DISTINCT p.post_id) + COUNT(DISTINCT CASE WHEN i.type = 'Like' THEN i.interaction_id END) + COUNT(DISTINCT CASE WHEN i.type = 'Share' THEN i.interaction_id END) + COUNT(DISTINCT c.comment_id)) DESC
LIMIT 10;
