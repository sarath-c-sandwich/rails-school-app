module SkillsetsHelper
  def blank_skillset?
    if @skills.size <= 0
      "No"
    else
      @skills.size
    end
  end
end
