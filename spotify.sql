USE bd_spotify;

SELECT *
FROM SPOTIFY_DATA;

-- Consulta para ver total artistas escuchados--
SELECT
COUNT(DISTINCT(artist_name)) AS Total_Artistas_Escuchados
FROM spotify_data;

-- Consulta para ver total canciones escuchadas--
SELECT
COUNT(DISTINCT(track_name)) AS Total_Tracks
FROM spotify_data;

-- Consulta para ver cuantas veces he reproducido cada grupo y cuantas canciones distintas
SELECT 
artist_name AS Artist_Name, 
COUNT(*) AS Total_Reproductions,
COUNT(DISTINCT(track_name)) AS Total_Different_Songs
FROM spotify_data
GROUP BY artist_name
ORDER BY Total_Reproductions DESC;

-- Consulta para ver las 10 canciones más reproducidas
SELECT 
track_name,
COUNT(*) AS total_reproductions
FROM spotify_data
GROUP BY track_name
ORDER BY total_reproductions DESC
LIMIT 10;

-- Consulta con los 10 artistas más reproducidos
SELECT 
artist_name,
COUNT(*) AS total_reproductions
FROM spotify_data
GROUP BY artist_name
ORDER BY total_reproductions DESC
LIMIT 10;

-- Consulta para ver que días escucho más música:
SELECT 
day AS Day,
COUNT(track_name) AS Total_Canciones_Dia
FROM spotify_data
GROUP BY day
ORDER BY Total_Canciones_Dia DESC;

-- Consulta para ver que mes escucho más música:
SELECT 
month AS Month,
COUNT(track_name) AS Total_Canciones_Mes
FROM spotify_data
GROUP BY month
ORDER BY Total_Canciones_Mes DESC;

-- Consulta para ver que canciones he escuchado más cada día de la semana:
SELECT 
day AS Day,
track_name AS Titulo_Cancion,
COUNT(*) AS total_reproduciones
FROM spotify_data
GROUP BY day, track_name
ORDER BY total_reproduciones DESC;


-- Consulta para reproduciones por hora del dia:
SELECT 
hour AS Hora,
COUNT(*) AS total_reproduciones
FROM spotify_data
GROUP BY hour
ORDER BY total_reproduciones DESC;

-- Consulta para ver hora promedio en la que más escucho musica
SELECT AVG(hour) AS hora_promedio FROM spotify_data;


-- Consulta para ver que artistas he escuchado más cada mes
SELECT 
month AS Month,
artist_name AS Nombre_Artista,
COUNT(*) AS total_reproduciones
FROM spotify_data
GROUP BY month, artist_name
ORDER BY total_reproduciones DESC
LIMIT 20;

-- Consulta para ver las canciones más repetidas a lo largo del año
SELECT
DISTINCT(track_name) AS Nombre_Cancion,
total_repeats AS Total_repeticiones
FROM spotify_data
ORDER BY Total_repeticiones DESC;








