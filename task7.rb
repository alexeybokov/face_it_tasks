# обьеденить задачи в классы, собрать вместе в модуле. Каждый таск запускается с помощью консоли. То-есть, ввели в консоли 1 - запускается и выполняется первый таск.

Dir[File.join('../tasks/**/*.rb')].each { |f| require f }

module Tasks
  extend self

  def run_task!(task_number)
    case task_number
    when 1
      Task1.new.puts_ruby
    when 2
      Circle.new(ask_for_radius).draw
    when 3
    when 4
    when 5
    when 6
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

  def run!
    task_number = -1
    while true do
      while !(0..6).include?(task_number)
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
