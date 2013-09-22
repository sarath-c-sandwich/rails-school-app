class ObjectivesController < ApplicationController

    before_action :get_course, :only => [:index, :new, :create, :destroy, :update, :edit]
    before_action :get_objective, :only => [ :destroy, :update, :edit] 

    def index
        # select all objectives which on the same course id
        @objectives = @course.objectives.order("created_at DESC")
        @objective = @course.objectives.new
    end

    def new 
        #@objective = @course.objectives.new
    end

    def create
        @objective = @course.objectives.new(get_objective_params)
        if @objective.save
            redirect_to course_objectives_path(@course)#, notice:"Successfully insert objective!"
        else
            render :new, notice: "Field must not be blank!"
        end
    end

    def edit

    end

    def update
        if @objective.update get_objective_params
            flash[:notice] = "Successfully updated!"
            redirect_to course_objectives_path(@course)
        end
    end

    def destroy
        if @objective.destroy
            redirect_to course_objectives_path(@course)#, "Successfully removed an objective!"
        else 
            render :index
        end
    end

    private

    def get_course
        @course = Course.find(params[:course_id])
    end

    def get_objective
        @objective = Objective.find(params[:id])
    end

    def get_objective_params
        params.require(:objective).permit(:description)
    end
end
