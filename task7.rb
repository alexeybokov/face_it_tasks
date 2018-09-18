module Tasks
  class Task1
    def self.puts_ruby
      for i in 1..30
        if i == 5
          puts "ruby"
        elsif i == 20
          puts "ruby"
        elsif i == 25
          puts "ruby"
        end
        puts "<3 ruby"
      end
    end
  end

  class Circle
    def initialize(radius)
      @radius = radius.to_i
    end

    def self.draw
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

  class Task3
    def self.draw_matrix(a)
      a.times do |i|
        row = []
        a.times do |j|
          row << (i == j ? 1 : 0)
        end
        p row.join(' ')
      end
    end
  end

  class Task4
    def self.nested_hash_value(obj,key)
      if obj.respond_to?(:key?) && obj.key?(key)
        obj[key]
      elsif obj.respond_to?(:each)
        r = nil
        obj.find{ |*a| r=nested_hash_value(a.last,key) }
        r
      end
    end
  end

  class Task5
    def self.formatize(str, action)
      case action
      when :cap_words
        str.split(' ').map { |w| w.capitalize }.join('')
      when :downcase
        str.split(' ').map { |w| w.downcase }.join('_')
      when :css_words
        str.split(' ').map { |w| w }.join('-')
      end
    end
  end

  class Task6
    def self.get_all(array, klass)
      array.flatten.select { |i| i.class == klass }
    end
  end

  puts "Enter task number from 1 to 6:"
  t = gets.chomp.to_i

  if t == 1
    Tasks::Task1.puts_ruby
  elsif t == 2 # TODO
    puts "Enter circle radius:"
    a = gets.chomp.to_i
    Tasks::Circle.new(a).draw
  elsif t == 3
    puts "Enter matrix size:"
    a = gets.chomp.to_i
    Tasks::Task3.draw_matrix(a)
  elsif t == 4
    hash = { key1: {}, key2: {}, key3: { key4: 'str', key5: 'str2', key6: { key7: { key8: 1, key9: [2]} } }}
    p Tasks::Task4.nested_hash_value(hash, :key9)
  elsif t == 5
    str = 'i love ruby'
    p Tasks::Task5.formatize(str, :cap_words)
    p Tasks::Task5.formatize(str, :downcase)
    p Tasks::Task5.formatize(str, :css_words)
  elsif t == 6
    array = [[1, 2, 3, 4, '1'], ['2', '5', '10'], [111, 222, 333, 444], ['i', 'love', 'ruby'], { key: 'value' }, [[['text', 100_000]]]]
    p Tasks::Task6.get_all(array, String)
    p Tasks::Task6.get_all(array, Integer)
  else
    puts "Wrong number! You must enter task number from 1 to 6!"
  end
end
