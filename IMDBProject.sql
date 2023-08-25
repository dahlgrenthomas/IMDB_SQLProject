SELECT * FROM imdb_top_1000 ORDER BY 1

-- Looking at the average of the IMDB and Meta scores of actions movies, if Meta_score is null average is just the IMDB score

SELECT Series_Title, Genre, IMDB_Rating, Meta_score, ((IMDB_Rating*10) + COALESCE(Meta_score, IMDB_Rating*10))/2 AS AverageScore 
from imdb_top_1000
WHERE Genre like '%Action%'
ORDER BY 4 DESC

-- Looking at the average IMDB score compared to number of votes

SELECT Series_Title, Genre, IMDB_Rating, Gross, Gross/IMDB_Rating AS Gross 
from imdb_top_1000
ORDER BY 5 DESC



