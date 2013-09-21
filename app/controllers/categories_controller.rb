class CategoriesController < ApplicationController
    before_action :get_category, :only => [:show, :destroy, :update, :edit]

    def index 
        self.new
        @categories = Category.all
    end 

    def new
        @category = Category.new
    end

    def show 
    end

    def create
        @category = Category.new get_params
        if @category.save
            flash[:notice] = "Successfully added new category!"
            redirect_to categories_url
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @category.update get_params
            redirect_to categories_url, notice:"Successfully update"
        else
            render :show
        end
    end

    def destroy
        @category.destroy
        redirect_to categories_url, notice:"Successfully removed a category!"
    end

    private
    def get_category
        @category = Category.find(params[:id])
    end

    def get_params
        params.require(:category).
            permit(:name)
    end

end
