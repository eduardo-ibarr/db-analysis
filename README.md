## Utilização

Primeiramente, execute o comando contido no arquivo `database.sql` que vai criar o banco de dados.

Em seguida, execute as queries que existem dentro do script `definition.sql`, responsável pela criação das tabelas do banco.

Para popular o seu banco de dados, execute os scripts dentro do arquivo `population.sql`, estes scripts vão gerar cerca de 150 mil dados dentro do banco, para análises futuras.

Agora, para poder criar as análises complexas, vá até a pasta `views` e execute os códigos de cada arquivo presente na pasta. Cada arquivo contém uma view responsável por apontar para uma consulta SQL relativamente complexa.

Por fim, para chamar as views criadas, execute uma por uma das instruções presentes no arquivo `execution.sql`.
