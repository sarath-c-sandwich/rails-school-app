class SkillsetsController < ApplicationController
    before_action :get_skill, :only => [:edit, :destroy, :update]

    def index
      @skill = self.new
      @skills = Skillset.all
    end

    def new
      @skill = Skillset.new
    end

    def create
      @skill = Skillset.new get_params
      if @skill.save
        redirect_to skillsets_url, notice:"Successfully saved a new record"
      end
    end

    def edit
    end

    def update
      if @skill.update get_params
        redirect_to skillsets_url, notice:"Successfully update a skill"
      end
    end

    def destroy
      if @skill.destroy
        redirect_to skillsets_url, notice:"Successfully removed a skill record"
      end
    end

    private
    def get_params
      params.require(:skillset).permit(:skill)
    end

    def get_skill
      @skill = Skillset.find(params[:id])
    end
end
