# Вывести в консоль матрицу с еденицами по диагонали. Размер задается с консоли.
class Matrix
  def draw_matrix(n)
    n.times do |i|
      row = Array.new(n,0)
      row[i] = 1
      p row.join(' ')
    end
  end
end

# puts "Enter matrix size:"
# n = gets.chomp.to_i
# Matrix.new.draw_matrix(n)
