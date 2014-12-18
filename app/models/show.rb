class Show < ActiveRecord::Base
  include QuestionModules::Fetcher
  
  has_many :questions
  has_many :prizes, -> { uniq }, through: :questions
  has_many :rounds, -> { uniq }, through: :questions
  has_many :categories, -> { uniq }, through: :questions

end