# Написать метод, который принимает многомерный массив и тип данных, возвращает массив этих типов.

class Task6
  def get_all(array, klass)
    array.flatten.select { |i| i.class == klass }            #fail "wrong klass provided" unless klass.include?(Integer)
  end

  array = [[1, 2, 3, 4, '1'], ['2', '5', '10'], [111, 222, 333, 444], ['i', 'love', 'ruby'], { key: 'value' }, [[['text', 100_000]]]]

  p get_all(array, String)
  p get_all(array, Integer)
end
