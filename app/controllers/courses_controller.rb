class CoursesController < ApplicationController
    
    before_action :get_params, :only => [:delete, :show]
    
    def index
        @course = Course.all
    end

    def new
        @course = Course.new
    end
    
    def show

    end

    def delete

    end

    private
    def get_params
        @course = Course.find(params[:id]);
    end
end
