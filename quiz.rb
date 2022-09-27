class Quiz
  puts "\n Welcome to Quiz Master \n\n"
  print "Pilih Soal No: "
  no = gets.to_i

  questions = []
  File.foreach("quiz_master.txt") { |line| questions << line}
  question = questions.find {|question_no| question_no[0].to_i == no}

  if question.nil?
    print "Belum ada soal"
  else
    print "Q: #{question.split(/ /,2)[1].split("? ")[0]}?\n"
    print "A: #{question.split(/ /,2)[1].split("? ")[1]}\n"
  end

end
