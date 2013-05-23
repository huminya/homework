filename = ARGV.first

prompt = ">"
txt = File.open(filename)

puts "Here's your file: #{filename}"
puts txt.read()
puts "I am cloing the file #{filename}."
txt.close()

puts "Type the filename again:"
print prompt
file_again = STDIN.gets.chomp()

txt_again = File.open(file_again)

puts txt_again.read()
puts "I am going to close the file #{file_again}"