def caesar_cipher(string, num)
    ascii = string.chars.map { |c| c.ord }
    shifted = ascii.map { |c| c + num }
    sentence = shifted.map { |c| c.chr }.join
    my_subs = {'#' => ' ', ')' => ' ', '!' => ' ', '"' => ' ', '$' => ' ', '%' => ' ', '&' => ' ', '\'' => ' ', '(' => ' ', '*' => ' '}
    puts sentence.split('').map{|i| my_subs[i] || i}.join
end

puts "Enter your sentence"
string = gets.chomp
puts "\n"
puts "Pick a number (1-9)"
num = gets.chomp.to_i
puts "\n"
puts "converting to Caesar’s code..."
puts "\n"

caesar_cipher(string, num)
