class TextbooksController < ApplicationController

    before_action :get_textbook, :only => [:edit, :destroy, :update]

    def index
        @textbooks = Textbook.all
    end

    def new
        @textbook = Textbook.new
    end

    def create
        @textbook = Textbook.new get_params
        if @textbook.save
            redirect_to textbooks_url
        else
        
        end
    end

    def edit

    end

    def update
        if @textbook.update get_params
            flash[:notice] = "A textbook record has updated!"
            redirect_to textbooks_url
        else
            redirect_to edit_textbook_url(@textbook), notice: "Error! Record can not save"
        end
    end

    def destroy
        @textbook.destroy
        redirect_to textbooks_url, notice: "Successfully removed a selected record!"
    end

    def show
    end

    private
    def get_textbook
        @textbook = Textbook.find(params[:id])
    end

    def get_params
        params.require(:textbook).permit(:title, :author, :published_year)
    end


end
