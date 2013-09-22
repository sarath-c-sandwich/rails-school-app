module TutorsHelper
    def have_tutor?
      if @tutors.size <= 0
        "No"
      else
        @tutors.size
      end
    end

    def free?(tutor)
      if tutor.free?
        "Free"
      else
        number_to_currency tutor.daily_rate
      end
    end
end
