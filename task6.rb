# Написать метод, который принимает многомерный массив и тип данных, возвращает массив этих типов.

class Task6
  def get_all(array, klass)
    array.flatten.select { |i| i.class == klass }
  end
end

array = [[1, 2, 3, 4, '1'], ['2', '5', '10'], [111, 222, 333, 444], ['i', 'love', 'ruby'], { key: 'value' }, [[['text', 100_000]]]]


p Task6.new.get_all(array, String)
p Task6.new.get_all(array, Integer)
