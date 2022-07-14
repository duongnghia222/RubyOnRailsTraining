puts "your name ?\n"
name = gets.chomp
puts "Hello #{name} ! here is the questions\n"
#class--------
class Question
  attr_accessor :promt, :ans
  def initialize(promt, ans)
    @promt = promt
    @ans = ans
  end
end
#------------

p1 = "1 + 1 = ?\n a. 1\n b. 2\n c. 3\n"
p2 = "2 + 1 = ?\n a. 1\n b. 2\n c. 3\n"
p3 = "1 + 0 = ?\n a. 1\n b. 2\n c. 3\n"

questions = [
Question.new(p1, "b"),
Question.new(p2, "c"),
Question.new(p3, "a")
]

def run(questions)
  cnt = 0
  ans = ""
  for q in questions
    puts q.promt
    ans = gets.chomp
    if ans == q.ans
      puts "correct"
      cnt += 1
    else
      puts "incorrect"
    end
  end
  puts "you got #{cnt} out of #{questions.length}"
end

run(questions)
