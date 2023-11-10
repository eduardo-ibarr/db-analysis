-- Inserindo dados na tabela Users
-- 10.000 usuários
INSERT INTO Users (name, email, password)
SELECT 
    'User_' || i,
    'user_' || i || '@example.com',
    'password' || i
FROM generate_series(1, 10000) AS i;

-- Inserindo dados na tabela Posts
-- 40.000 posts
INSERT INTO Posts (user_id, content)
SELECT 
    (random() * 9999 + 1)::int,
    'This is post number ' || i
FROM generate_series(1, 40000) AS i;

-- Inserindo dados na tabela Comments
-- 70.000 comentários
INSERT INTO Comments (post_id, user_id, content)
SELECT 
    (random() * 39999 + 1)::int,
    (random() * 9999 + 1)::int,
    'This is comment number ' || i
FROM generate_series(1, 70000) AS i;

-- Inserindo dados na tabela Interactions
-- 30.000 interações
INSERT INTO Interactions (user_id, post_id, type)
SELECT 
    (random() * 9999 + 1)::int,
    (random() * 39999 + 1)::int,
    CASE WHEN (random() > 0.5) THEN 'Like' ELSE 'Share' END
FROM generate_series(1, 30000) AS i;

-- Inserindo dados na tabela ActivityLogs
-- 15.000 logs de atividades
INSERT INTO ActivityLogs (user_id, description)
SELECT 
    (random() * 9999 + 1)::int,
    'Activity log ' || i
FROM generate_series(1, 15000) AS i;

-- Inserindo dados na tabela Messages
-- 35.000 mensagens
INSERT INTO Messages (sender_id, receiver_id, content)
SELECT 
    (random() * 9999 + 1)::int,
    (random() * 9999 + 1)::int,
    'This is message number ' || i
FROM generate_series(1, 35000) AS i;
