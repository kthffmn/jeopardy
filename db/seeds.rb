# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'json'

file = File.read('db/questions.json')
data = JSON.parse(file)

data.each do |question|
  binding.pry
  cat_name = question[:category].downcase
  category = Category.find_by(:name => cat_name)
  category ||= Category.create(:name => cat_name)
  q.category_id = category.id

  q.question = question[:question].gsub("'", "")
  q.value = question[:value].gsub("$", "")

  [:show_number, :round, :air_date, :answer].each do |k|
    q.send(k, question[k])
  end
  q.save
end
