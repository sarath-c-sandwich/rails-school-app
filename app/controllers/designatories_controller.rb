class DesignatoriesController < ApplicationController

  before_action :get_designatory, :only => [:destroy, :edit, :update]

  def index
    @designatories = Designatory.all
    @designatory = self.new
  end

  def new
    @designatory = Designatory.new
  end
  
  def create
    @designatory = Designatory.new get_params
    if @designatory.save
      redirect_to designatories_path, notice:"Successfully save a record!"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @designatory.update get_params
      redirect_to designatories_url
    end
  end
  
  def destroy
    if @designatory.destroy
      redirect_to designatories_url, notice:"A designatory has removed!"
    end
  end
  
  private
  def get_designatory
    @designatory = Designatory.find(params[:id])
  end
  
  def get_params
    params.require(:designatory).
      permit(:designator, :description)
  end
end
