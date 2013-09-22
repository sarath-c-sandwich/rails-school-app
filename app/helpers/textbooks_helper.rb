module TextbooksHelper
    def have_book?
        if @textbooks.size == 0
            "no"
        else
            @textbooks.size
        end
    end
end
