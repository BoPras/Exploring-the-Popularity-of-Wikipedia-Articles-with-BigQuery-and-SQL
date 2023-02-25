# Exploring-the-Popularity-of-Wikipedia-Articles-with-BigQuery-and-SQL
# Google-Related-View
SELECT
language,
title AS microsoft_title,
SUM(views) AS views
FROM 
`bigquery-samples.wikipedia_benchmark.Wiki10B`
WHERE 
title LIKE '%Microsoft%'
GROUP BY
  language,
  title
ORDER BY
  views DESC;
