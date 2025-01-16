#Most popular top 10 tracks
select track_name, track_artist, track_popularity
from spotify_data
order by track_popularity desc
limit 10;

#energy levels and track_popularity
SELECT 
    CASE 
        WHEN energy < 0.3 THEN 'Low Energy'
        WHEN energy BETWEEN 0.3 AND 0.7 THEN 'Medium Energy'
        ELSE 'High Energy'
    END AS energy_level,
    AVG(track_popularity) AS avg_popularity
FROM spotify_data
GROUP BY energy_level
ORDER BY avg_popularity DESC;
