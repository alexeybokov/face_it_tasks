# обьеденить задачи в классы, собрать вместе в модуле. Каждый таск запускается с помощью консоли. То-есть, ввели в консоли 1 - запускается и выполняется первый таск.

Dir[File.join('../tasks/**/*.rb')].each { |f| require f }

module Tasks
  module_function

  def run_task!(task_number)
    case task_number
    when 1
      Task1.new.puts_ruby
    when 2
      Circle.new(ask_for_radius).draw
    when 3
      Matrix.new.draw_matrix(ask_for_size_matrix)
    when 4
      hash = { key1: {}, key2: {}, key3: { key4: 'str', key5: 'str2', key6: { key7: { key8: 1, key9: [2]} } }}
      Task4.new.nested_hash_value(hash, :key9)
    when 5
      str = 'i love ruby'
      p Task5.new.formatize(str, :cap_words)
      p Task5.new.formatize(str, :downcase)
      p Task5.new.formatize(str, :css_words)
    when 6
      array = [[1, 2, 3, 4, '1'], ['2', '5', '10'], [111, 222, 333, 444], ['i', 'love', 'ruby'], { key: 'value' }, [[['text', 100_000]]]]
      p Task6.new.get_all(array, String)
      p Task6.new.get_all(array, Integer)
    end
  end

  def ask_for_radius
    radius = 0
    while radius <= 0 do
      puts "Enter the radius of circle: \n"
      radius = gets.chomp().to_i
    end
    radius
  end

  def ask_for_size_matrix
    size = 0
    while size <= 0 do
      puts "Enter matrix size: \n"
      size = gets.chomp().to_i
    end
    size
  end

  def run!
    task_number = -1
    loop do
      until(0..6).include?(task_number)
        puts "Enter number of task you want to run from 1 to 6 (use 0 to exit):\n"
        task_number = gets.chomp().to_i
      end
      break if task_number == 0
      run_task!(task_number)
      task_number = -1
    end
  end
  run!
end
