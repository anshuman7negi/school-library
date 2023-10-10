require_relative 'options'

def main
  puts 'Welcome to School library App'

  list = Options.new
  loop do
    list.list_options
    option = gets.chomp.to_i
    break if option == 7

    list.option_handle(option)
  end
end

main
