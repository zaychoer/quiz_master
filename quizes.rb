class Quizes
  puts "No | Questions | Answer\n"
  File.foreach("quiz_master.txt") { |line| puts line }
end
