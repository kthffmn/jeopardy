class Prize < ActiveRecord::Base
  has_many :questions
  
end