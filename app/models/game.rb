class Game < ActiveRecord::Base
  belongs_to :show
  has_many :user_games
  has_many :users, through: :user_games

  def find_questions(round_name)
    jeopardy = Round.find_by(:name => round_name)
    self.show.questions.where(:round_id => jeopardy.id)
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
