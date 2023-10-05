require './nameable'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id, :rentals

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @parent_permission = parent_permission
    @name = name
    @age = age
    @id = Random.rand(1..100)
    @rentals = []
  end

  def rent_book(book, date)
    rental = Rental.new(self, book, date)
    rentals << rental
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    name
  end

  private

  def of_age?
    @age >= 18
  end
end
