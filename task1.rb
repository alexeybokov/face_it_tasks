# Вывести в консоль, 30 раз "<3 ruby", каждый в новой строке, 10ый, 20ый, и 25ый вывод вывести просто "ruby".

class Task1
  def puts_ruby
    30.times { |i| [5, 20, 25].include?(i+1) ? puts('ruby') : puts('<3ruby') }
  end
end
