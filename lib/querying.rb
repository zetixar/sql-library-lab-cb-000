def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT Books.title, Books.year
   FROM Books
   WHERE series_id =(SELECT MIN(id) FROM Series)
   ORDER BY Books.year"
end

def select_name_and_motto_of_char_with_longest_motto
  # "SELECT TOP characters.name, characters.motto FROM characters ORDER BY len(Characters.motto) desc;
  "SELECT characters.name, characters.motto FROM characters WHERE length(motto)=(SELECT MAX(length(motto)) FROM CHaracters);

  "
end

def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) FROM Characters GROUP BY species ORDER BY COUNT(species) DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT Authors.name, subgenres.name
   FROM authors
   JOIN Series
   ON authors.id = series.author_id
   JOIN subgenres
   ON series.subgenre_id = subgenres.id;"
end
#
# def select_series_title_with_most_human_characters
#   "SELECT Series.title
#    FROM series
#    JOIN characters
#    ON series.id = Characters.series_id
#
#    SELECT series.title
#    FROM series
#    JOIN books
#    ON series.id = books.series_id
#    JOIN characters
#    ON
#
#   "
# end

def select_character_names_and_number_of_books_they_are_in
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series JOIN books ON books.series_id = series.id JOIN character_books ON character_books.book_id = books.id JOIN characters ON character_books.character_id = characters.id WHERE characters.species = 'human' GROUP BY series.title ORDER BY COUNT(*) DESC LIMIT 1"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(*) as book_count from character_books JOIN characters ON character_books.character_id = characters.id GROUP BY characters.name ORDER BY book_count DESC"
end
