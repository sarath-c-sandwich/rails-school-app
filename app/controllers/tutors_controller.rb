class TutorsController < ApplicationController
    before_action :get_tutor, :only => [:destroy, :edit, :update]


    def index
      @tutors = Tutor.all
    end

    def new
      @tutor = Tutor.new
    end

    def create
      @tutor = Tutor.new get_params
      if @tutor.save
        redirect_to tutors_url, notice: "Successfully saved a tutor record"
      else
        render :new
      end
    end

    def edit
    end

    def destroy
      if @tutor.destroy
        redirect_to tutors_url, notice:"Successfully removed a tutor"
      end
    end

    def update

      if @tutor.update get_params
        redirect_to tutors_url, notice:"Successfully updated a record!"
      else
        render :edit
      end
    end
    private
    def get_tutor
        @tutor = Tutor.find(params[:id])
    end

    def get_params
        params.require(:tutor).
            permit(:title, 
              :first_name, 
              :last_name, 
              :daily_rate, 
              :publish, 
              language_ids: [], 
              skillset_ids: [], 
              designatory_ids: [])
    end
end
