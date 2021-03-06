class Балада
  attr_accessor :назва
  attr_accessor :слова

  @@кількість_балад = 0

  def initialize(назва, слова = 'Ляляля!')
    @назва = назва
    @слова = слова
    @@кількість_балад += 1
  end

  def self.кількість_балад
    @@кількість_балад
  end
end

балада = Балада.new('Балада про Пуделя-дуделя')
puts "Кількість балад: #{Балада.кількість_балад}"
puts "Ідентифікатор балади: #{балада.object_id}"
puts "Назва балади: #{балада.назва}"
puts "Ідентифікатор балади, ще раз!: #{балада.object_id}"
puts "Слова балади: #{балада.слова}"