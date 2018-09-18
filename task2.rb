class Circle
  def initialize(radius)
    @radius = radius.to_i
  end

  def draw
    (0..@radius*2).each do |x|
      (0..@radius*2).each do |y|
        print distance_from_center(x,y).round == @radius ? '*' : '.'
      end
      puts
    end
  end

  def distance_from_center(x,y)
    a = calc_side(x)
    b = calc_side(y)
    return Math.sqrt(a**2 + b**2)
  end

  def calc_side(z)
    z < @radius ? (@radius - z) : (z - @radius)
  end
end

puts "Enter circle radius:"
a = gets.chomp.to_i
Circle.new(a).draw
