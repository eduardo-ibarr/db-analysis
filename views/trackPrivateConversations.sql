CREATE VIEW trackPrivateConversations AS
-- Esta view identifica as conversas privadas com maior número de mensagens trocadas.
SELECT 
    m.sender_id,
    m.receiver_id,
    COUNT(m.message_id) AS total_messages,
    MAX(m.created_at) AS last_message_time
FROM 
    Messages m
GROUP BY 
    m.sender_id, m.receiver_id
ORDER BY 
    total_messages DESC
LIMIT 10;