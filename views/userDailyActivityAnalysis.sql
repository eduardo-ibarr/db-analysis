CREATE VIEW userDailyActivityAnalysis AS
-- Esta view oferece um resumo das atividades diárias dos usuários, incluindo postagens, comentários, likes e shares.
SELECT 
    activity_date,
    (SELECT COUNT(*) FROM Posts WHERE DATE(created_at) = activity_date) AS total_posts,
    (SELECT COUNT(*) FROM Comments WHERE DATE(created_at) = activity_date) AS total_comments,
    (SELECT COUNT(*) FROM Interactions WHERE DATE(created_at) = activity_date AND type = 'Like') AS total_likes,
    (SELECT COUNT(*) FROM Interactions WHERE DATE(created_at) = activity_date AND type = 'Share') AS total_shares
FROM 
    (SELECT DATE(created_at) AS activity_date FROM Posts
     UNION
     SELECT DATE(created_at) FROM Comments
     UNION
     SELECT DATE(created_at) FROM Interactions) AS dates
GROUP BY 
    activity_date
ORDER BY 
    activity_date DESC;
