def draw_matrix(n)
  n.times do |i|
    row = Array.new(n,0)
    row[i] = 1
    p row.join(' ')
  end
end

puts "Enter matrix size:"
n = gets.chomp.to_i
p draw_matrix(n)
