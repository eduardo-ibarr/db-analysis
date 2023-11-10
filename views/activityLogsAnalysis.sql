CREATE VIEW activityLogsAnalysis AS
-- Esta view encontra os usuários com a maior variedade de atividades registradas nos logs.
SELECT 
    al.user_id,
    COUNT(DISTINCT al.description) AS variety_of_activities
FROM 
    ActivityLogs al
GROUP BY 
    al.user_id
ORDER BY 
    variety_of_activities DESC
LIMIT 10;