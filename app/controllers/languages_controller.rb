class LanguagesController < ApplicationController

    before_action :get_language, :only => [:destroy, :edit]

    def index
        @languages = Language.all
        @language = self.new
    end

    def new
        @language = Language.new
    end

    def create
        @language = Language.new get_params
        if @language.save
          redirect_to languages_url, notice:"A new language has created!"
        else
          render :new, notice:"Some field should not be blank"
        end
    end

    def edit
    end
    def update
        if @language.update get_language
            redirect_to languages_url, notice:"Successfully updated a language record!"
        else
            render :edit
        end
    end

    def destroy
        if @language.destroy
          redirect_to languages_url, notice:"Successfully removed a language"
        end
    end

    private 
    def get_params
        params.require(:language).permit(:language, :short_code)
    end

    def get_language
        @language = Language.find(params[:id])
    end

end
