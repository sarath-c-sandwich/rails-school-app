class Course < ActiveRecord::Base
    
    has_and_belongs_to_many :categories
    has_many :objectives, dependent: :destroy

    def select_categories
        Category.all
    end

    def self.select_category_by

    end

    def self.category_params
        Category.find(params[:id])
    end
end
