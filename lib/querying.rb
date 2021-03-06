def select_books_titles_and_years_in_first_series_order_by_year
  'SELECT title, year from books
  WHERE series_id = 1
  ORDER BY year ASC;'
end

def select_name_and_motto_of_char_with_longest_motto
  'SELECT name, motto from characters
  ORDER BY length(motto) DESC
  LIMIT 1;'
end


def select_value_and_count_of_most_prolific_species
  'SELECT species, count(species) from characters
  GROUP BY species
  ORDER BY count(species) desc
  LIMIT 1;'
end

def select_name_and_series_subgenres_of_authors
  'SELECT authors.name, subgenres.name FROM authors
  JOIN series
  ON authors.id = series.author_id
  JOIN subgenres
  ON series.author_id = subgenres.id;'
end

def select_series_title_with_most_human_characters
  'SELECT series.title
  FROM characters
  JOIN series
  ON characters.series_id = series.id
  WHERE species = "human"
  GROUP BY series.title
      ORDER BY COUNT(*) DESC
      LIMIT 1;'
end

def select_character_names_and_number_of_books_they_are_in
  'SELECT name, count(name) from character_books
  JOIN characters
  ON character_books.character_id = characters.id
  GROUP BY name
  ORDER BY COUNT(name) DESC'
end
