def draw_matrix(a)
  a.times do |i|
    row = []
    a.times do |j|
      row << (i == j ? 1 : 0)
    end
    p row.join(' ')
  end
end

puts "Enter matrix size:"

a = gets.chomp.to_i

p draw_matrix(a)
