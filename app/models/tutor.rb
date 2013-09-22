class Tutor < ActiveRecord::Base
  #many-to-many relationship with 
  has_and_belongs_to_many :languages
  has_and_belongs_to_many :skillsets
  has_and_belongs_to_many :designatories
  has_many :courses

  validates :title,:first_name,:last_name, :daily_rate, presence: true 
  
  TITLES = %w(Mr Ms Dr)
    
  def publish?
    if publish == true
      "Published"
    else
      "Unpublished"
    end
  end

  def free?
    if(daily_rate<=0)
      true
    end
    # true
  end
end
