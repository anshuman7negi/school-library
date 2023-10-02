class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name: 'Unknown', parent_permission: true)
    @parent_permission = parent_permission
    @name = name
    @age = age
    @id = Random.rand(1..100)
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  private

  def of_age?
    @age >= 18
  end
end
