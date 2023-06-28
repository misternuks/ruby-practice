class OrangeTree
  attr_accessor :age, :height, :fruits, :grow, :may_die, :produce_fruits

  def initialize
    @age = 0
    @height = 0
    @fruits = 0
    @dead = false
  end

  def one_year_passes!
    @age += 1
    may_die!
    grow!
    produce_fruits!
    dead?
  end

  def may_die!
    probability = 0.01 * (@age - 50)
    @dead = true if @age >= 100
    if @age <= 50
      @dead = false
    else
      rand < probability ? @dead = true : @dead = false
    end
  end

  def grow!
    @height += 1 if age <= 10
  end

  def produce_fruits!
    if @age > 5 && @age < 10
      @fruits = 100
    elsif @age >= 10 && age < 15
      @fruits = 200
    else
      @fruits = 0
    end
  end

  def pick_a_fruit!
    @fruits -= 1 if @fruits.positive?
  end

  def dead?
    @dead
  end

end
