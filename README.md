## Descrição do Banco de Dados

### Visão Geral

Este banco de dados foi projetado para simular uma plataforma de rede social, oferecendo uma estrutura para armazenar e analisar interações de usuários, posts, comentários, mensagens privadas e atividades diversas.

### Estrutura do Banco de Dados

- Tabela Users: Armazena informações sobre os usuários, incluindo ID do usuário, nome, e-mail, senha e timestamps de criação e atualização. O e-mail é único para cada usuário, garantindo que não haja duplicatas.

- Tabela Posts: Contém posts feitos pelos usuários. Cada post está associado a um usuário através do user_id e inclui o conteúdo do post e timestamps.

- Tabela Comments: Armazena comentários feitos nos posts. Cada comentário está vinculado a um post específico e a um usuário.

- Tabela Interactions: Registra interações como curtidas e compartilhamentos em posts. Cada interação está relacionada a um usuário e a um post.

- Tabela ActivityLogs: Fornece um log de atividades para cada usuário, detalhando as ações realizadas na plataforma.

- Tabela Messages: Armazena mensagens trocadas entre usuários, facilitando a comunicação privada.

### Views Criadas para Análise:

- usersMostActive: Identifica os 10 usuários mais ativos com base no total de posts e comentários.
- postEngageAnalysis: Analisa o engajamento médio (comentários, curtidas, compartilhamentos) por post.
- trackPrivateConversations: Identifica conversas privadas com maior número de mensagens trocadas.
- activityLogsAnalysis: Encontra usuários com a maior variedade de atividades registradas.
- userEngageDetailedAnalysis: Destaca usuários com maior engajamento e atividade de postagem..
- userDailyActivityAnalysis: Oferece um resumo das atividades diárias dos usuários

## Utilização

Primeiramente, execute o comando contido no arquivo `database.sql` que vai criar o banco de dados.

Em seguida, execute as queries que existem dentro do script `definition.sql`, responsável pela criação das tabelas do banco.

Para popular o seu banco de dados, execute os scripts dentro do arquivo `population.sql`, estes scripts vão gerar cerca de 150 mil dados dentro do banco, para análises futuras.

Agora, para poder criar as análises complexas, vá até a pasta `views` e execute os códigos de cada arquivo presente na pasta. Cada arquivo contém uma view responsável por apontar para uma consulta SQL relativamente complexa.

Por fim, para chamar as views criadas, execute uma por uma das instruções presentes no arquivo `execution.sql`.
