class Game < ActiveRecord::Base
  belongs_to :show
  has_many :questions, through: :show
  has_many :prizes, -> { uniq }, through: :show
  has_many :rounds, -> { uniq }, through: :show
  has_many :categories, -> { uniq }, through: :show

  has_many :user_games
  has_many :users, through: :user_games

  def find_questions(round_name)
    jeopardy = Round.find_by(:name => round_name)
    qs = questions.where(:round_id => jeopardy.id)
    qs.each_with_object({}) do |q,h|
      key = q.category.name
      h[key] = [] unless h[key]
      h[key] << q
    end
  end

  def jeopardy
    find_questions("Jeopardy!")
  end

  def double_jeopardy
    find_questions("Double Jeopardy!")
  end

  def final_jeopardy
    find_questions("Final Jeopardy!")
  end

end
