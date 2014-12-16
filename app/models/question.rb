class Question < ActiveRecord::Base
  belongs_to :category
  belongs_to :prize
  belongs_to :round
  belongs_to :show

end