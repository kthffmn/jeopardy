class Question < ActiveRecord::Base
  belongs_to :show
  belongs_to :prize
  belongs_to :round
  belongs_to :category

end