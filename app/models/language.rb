class Language < ActiveRecord::Base
  #many-to-many relationship with 
  has_and_belongs_to_many :tutors

  validates :language, presence: true


end
