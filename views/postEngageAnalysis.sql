CREATE VIEW postEngageAnalysis AS
-- Esta view analisa o engajamento médio (comentários, likes, shares) por post.
SELECT 
    p.post_id,
    COUNT(DISTINCT c.comment_id) AS total_comments,
    COUNT(DISTINCT CASE WHEN i.type = 'Like' THEN i.interaction_id END) AS total_likes,
    COUNT(DISTINCT CASE WHEN i.type = 'Share' THEN i.interaction_id END) AS total_shares
FROM 
    Posts p
LEFT JOIN Comments c ON p.post_id = c.post_id
LEFT JOIN Interactions i ON p.post_id = i.post_id
GROUP BY 
    p.post_id;
