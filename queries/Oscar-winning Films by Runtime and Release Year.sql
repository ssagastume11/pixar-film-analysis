SELECT
  f.film,
  f.release_year,
  f.run_time,
  f.film_rating,
  a.award_type,
  a.status
FROM
  `plenary-ability-463920-b3.pixar_films_data.film_analysis_cleaned` f
JOIN
  `plenary-ability-463920-b3.pixar_films_data.academy_awards_cleaned` a
ON
  f.film = a.film
WHERE
  a.status = 'Won'
ORDER BY
  f.release_year ASC, f.run_time DESC;