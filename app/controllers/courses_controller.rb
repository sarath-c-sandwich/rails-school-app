class CoursesController < ApplicationController

    before_action :get_params, :only => [:destroy, :show, :edit, :update]
    
    def index
        @courses = Course.all.order("created_at DESC")
    end

    def new
        @course = Course.new
        @categories = Course.get_categories
    end

    def create
        @course = Course.new get_course
        if @course.save
            redirect_to course_url(@course), notice:"New course record already saved!"
        else
            flash[:notice] = "Failed to save the record!"
            render :new
        end
    end
    
    def show
    end

    def edit
    end

    def update
        if @course.update get_course
            redirect_to course_url(@course), notice: "Successfully updated!"
        else
            render :edit
        end
    end

    def destroy
        @course.destroy
        redirect_to courses_url, notice: "Already removed record!"
    end

    private
    def get_params
        @course = Course.find(params[:id]);
    end

    def get_course
      params.require(:course).
        permit(:title, 
            :short_title, 
            :duration, 
            :cost_per_day, 
            :summary, 
            :published,
            category_ids: [], 
            textbook_ids: [])
    end
    
end
