class CreateSkillsetsTutors < ActiveRecord::Migration
  def change
    create_table :skillsets_tutors do |t|
      t.references :skillset, index: true
      t.references :tutor, index: true
    end
  end
end
