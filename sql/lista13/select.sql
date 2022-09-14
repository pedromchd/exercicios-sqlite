SELECT strftime('%d/%m/%Y', max(capitulos.data_exibicao)) AS 'último capítulo' FROM capitulos JOIN novelas ON capitulos.novela = novelas.codigo WHERE novelas.nome = 'Mistérios de uma Vida';
SELECT novelas.nome FROM novelas WHERE novelas.horario_exibicao IS NULL;
SELECT atores.nome FROM atores WHERE atores.cidade LIKE 'M%';
SELECT count(novelas.nome) AS quantidade FROM novelas WHERE novelas.nome LIKE '%vida%';
SELECT count(DISTINCT novelas.nome) AS quantidade_novelas FROM novelas JOIN novelasPersonagens ON novelas.codigo = novelasPersonagens.novela JOIN personagens ON personagens.codigo = novelasPersonagens.personagem JOIN atores ON atores.codigo = personagens.ator WHERE atores.nome = 'Gloria Pires';
SELECT * FROM personagens ORDER BY personagens.nome ASC;
SELECT * FROM personagens ORDER BY date(personagens.data_nascimento) DESC;
SELECT count(*) FROM atores;
SELECT count(*) FROM novelas;
SELECT count(*) FROM atores WHERE atores.sexo = 'F';
SELECT avg(date('now') - date(personagens.data_nascimento)) AS media_idade FROM personagens;
SELECT personagens.nome FROM personagens WHERE date('now') - date(personagens.data_nascimento) < 45;
SELECT DISTINCT atores.nome FROM atores JOIN personagens ON atores.codigo = personagens.ator WHERE date('now') - date(atores.data_nascimento) = date('now') - date(personagens.data_nascimento);
SELECT max(atores.salario) FROM atores;
SELECT min(atores.salario) FROM atores;
SELECT sum(atores.salario) FROM atores;