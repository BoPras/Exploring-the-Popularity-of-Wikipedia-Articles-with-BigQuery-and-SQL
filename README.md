# Exploring-the-Popularity-of-Wikipedia-Articles-with-BigQuery-and-SQL
# a list of the most popular Wikipedia articles with "Google" and "Microsoft" in their titles, grouped by language and ordered by total views
SELECT
  language,
  title,
  SUM(views) AS views
FROM
  `bigquery-samples.wikipedia_benchmark.Wiki10B`
WHERE
  title LIKE '%Google%'
GROUP BY
  language,
  title
ORDER BY
  views DESC;
