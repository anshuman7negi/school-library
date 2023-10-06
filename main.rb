require_relative 'app'

def list_options
  puts "\n"
  puts 'Enter number to pick an option:'
  puts '1. List all books'
  puts '2. List all people'
  puts '3. Create a person'
  puts '4. Create a book'
  puts '5. Create a rental'
  puts '6. List all rentals for a given person id'
  puts '7. End'
end

def main
  app = App.new
  loop do
    list_options
    option = gets.chomp.to_i
    options = {
      1 => -> { app.list_books },
      2 => -> { app.list_people },
      3 => -> { app.create_person },
      4 => -> { app.create_book },
      5 => -> { app.create_rental },
      6 => -> { app.list_rentals },
      7 => -> { exit }
    }
    case option
    when 1, 2, 3, 4, 5, 6, 7
      options[option].call
    end
  end
end

main