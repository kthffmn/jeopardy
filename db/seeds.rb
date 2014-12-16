require 'json'

def main
  puts "Starting..."

  file = File.read('db/questions.json')
  data = JSON.parse(file)
  num_complete = 0
  data.each_with_index do |question|
    puts "Num of Qs in DB: #{num_complete}" if num_complete % 1000 == 0
    create_question(question)
    num_complete += 1
  end

  puts "DATA: #{num_complete} questions"
  puts "DATABASE: #{Question.all.count} questions, #{Category.all.count} categories"
end

def create_question(question)
  q = Question.new

  if question["category"]
    cat_name = question["category"].downcase
    q.category_id = Category.find_or_create_by(:name => cat_name).id
  end

  if question["value"]
    prize_amt = question["value"].gsub("$", "") 
    q.prize_id = Prize.find_or_create_by(:amount => prize_amt).id
  end

  if question["show_number"]
    show_num = question["show_number"]
    q.show_id = Show.find_or_create_by(:number => show_num).id
  end

  if question["question"]
    q.text = question["question"].gsub("'", "")
  end

  if question["round"]
    q.round_id = Round.find_or_create_by(:name => question["round"]).id
  end  

  if question["air_date"]
    q.air_date = Date.parse(question["air_date"])
  end

  if question["answer"]
    answer = question["answer"]
    q.answer = answer
  end

  q.save
end

main

