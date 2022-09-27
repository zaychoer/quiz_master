class CreateQuiz
  puts "\n Welcome to Quiz Master \n\n"
  print "Buat Soal: "
  soal = gets

  questions = []
  File.foreach("quiz_master.txt") { |line| questions << line}
  question = questions.find {|question_no| question_no[0].to_i == soal.split[0].to_i}

  if question.nil?
    puts "Question no #{soal.split[0]} created: "
    print "Q: #{soal.split(/ /,2)[1].split("? ")[0]}?\n"
    print "A: #{soal.split(/ /,2)[1].split("? ")[1]}\n"

    File.write("quiz_master.txt", "#{(soal.gsub(/"/, '')).gsub /^$\n/, ''}", mode: "a")
  else
    puts "Question number #{soal.split[0]} already existed!"
  end

end