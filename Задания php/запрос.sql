SELECT authors.fio
FROM authorsandbooks INNER JOIN authors ON authorsandbooks.idauthor=authors.id
GROUP BY authors.fio, authorsandbooks.idauthor
HAVING COUNT(authorsandbooks.idauthor)<=6;