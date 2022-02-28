#standardSQL
SELECT
  stories.score AS stories_score,
  COUNT(stories.id) AS stories_count
FROM
  `bigquery-public-data.hacker_news.stories` AS stories
WHERE
  NOT (stories.score IS NULL)
GROUP BY
  1
ORDER BY
  1
LIMIT
  500
