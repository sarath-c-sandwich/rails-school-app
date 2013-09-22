class Textbook < ActiveRecord::Base
    has_and_belongs_to_many :courses

    def have_published_year?
        if published_year.nil?
            "Unknown"
        else
            published_year
        end
    end

end
