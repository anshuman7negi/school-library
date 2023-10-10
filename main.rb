require_relative 'options'
require_relative 'app'


def main
  puts 'Welcome to School library App'

  app = App.new

  list = Options.new(app)
  loop do
    list.list_options
    option = gets.chomp.to_i
    break if option == 7

    list.option_handle(option)
  end
end

main
