require_relative 'app'

class Options
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

  def option_handle(option)
    app = App.new
    actions = {
      1 => -> { app.list_books },
      2 => -> { app.list_people },
      3 => -> { app.create_person },
      4 => -> { app.create_book },
      5 => -> { app.create_rental },
      6 => -> { app.list_rentals }
    }
    case option
    when 1, 2, 3, 4, 5, 6, 7
      actions[option].call
    end
  end
end
