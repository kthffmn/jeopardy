class Game < ActiveRecord::Base
  include QuestionModules::Fetcher

  belongs_to :show
  has_many :questions, through: :show
  has_many :prizes, -> { uniq }, through: :show
  has_many :rounds, -> { uniq }, through: :show
  has_many :categories, -> { uniq }, through: :show

  has_many :user_games
  has_many :users, through: :user_games

end
