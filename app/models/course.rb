class Course < ActiveRecord::Base
    
    has_and_belongs_to_many :categories
    has_and_belongs_to_many :textbooks
    belongs_to :tutors

    has_many :objectives, ->{order "created_at ASC"},dependent: :destroy

    def self.get_categories
        Category.all
    end

    def self.select_category_by

    end

    def self.category_params
        Category.find(params[:id])
    end
end
