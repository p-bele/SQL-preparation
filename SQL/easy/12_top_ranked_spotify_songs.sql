-- find top ranked songs and how many times they hit #1

SELECT trackname, count(*) AS ranked_first
FROM spotify_worldwide_daily_song_ranking
WHERE position=1
GROUP BY trackname
ORDER BY ranked_first DESC;
