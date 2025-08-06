-- 1. Check for missing values in the pixar_films table
SELECT 
  COUNT(*) AS total_rows,
  COUNTIF(film IS NULL) AS missing_film,
  COUNTIF(release_date IS NULL) AS missing_release_date,
  COUNTIF(run_time IS NULL) AS missing_run_time,
  COUNTIF(film_rating IS NULL) AS missing_film_rating,
  COUNTIF(plot IS NULL) AS missing_plot
FROM `plenary-ability-463920-b3.pixar_films_data.pixar_films`;