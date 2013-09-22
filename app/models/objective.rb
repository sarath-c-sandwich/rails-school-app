class Objective < ActiveRecord::Base
  
  # validates :description, presence => true
  belongs_to :course, ->{order "created_at ASC"}
  
end
