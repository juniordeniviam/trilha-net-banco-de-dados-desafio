-- 1 - Buscar o nome e ano dos filmes
select Nome, Ano from filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select Nome, Ano from filmes order by Ano asc

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a dura��o
select Nome, Ano, Duracao from filmes where Nome = 'De Volta para o Futuro';

-- 4 - Buscar os filmes lan�ados em 1997
select Nome, Ano, Duracao from filmes where Ano = 1997;

-- 5 - Buscar os filmes lan�ados AP�S o ano 2000
select Nome, Ano, Duracao from filmes where Ano > 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select Nome, Ano, Duracao from filmes where Duracao > 100 and Duracao < 150 order by Duracao asc;

-- 7 - Buscar a quantidade de filmes lan�adas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
-- Resultado n�o est� igual ao print, os valores n�o parecem ser os mesmos.
-- select Ano, SUM(Duracao) from filmes group by Ano order by SUM(Duracao) desc
-- Ano: 1997, DURA��O: 609
-- Ano: 1995, DURA��O: 284
-- Ano: 1999, DURA��O: 281
select Ano, COUNT(Ano) quantidade from filmes group by Ano order by SUM(Duracao) desc

-- 8 - Buscar os Atores do g�nero masculino, retornando o PrimeiroNome, UltimoNome
select PrimeiroNome, UltimoNome from Atores where Genero = 'M'

-- 9 - Buscar os Atores do g�nero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select PrimeiroNome, UltimoNome from Atores where Genero = 'F' order by PrimeiroNome

-- 10 - Buscar o nome do filme e o g�nero
select
	f.Nome, g.Genero
from
	filmes f
	join FilmesGenero fg on f.Id = fg.IdFilme
	join Generos g on fg.IdGenero = g.Id

-- 11 - Buscar o nome do filme e o g�nero do tipo "Mist�rio"
select
	f.Nome
from
	filmes f
	join FilmesGenero fg on f.Id = fg.IdFilme
	join Generos g on fg.IdGenero = g.Id
where
	g.Genero = 'Mist�rio'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select
	f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
from
	Filmes f
	join ElencoFilme ef on f.Id = ef.IdFilme
	join Atores a on ef.IdAtor = a.Id




