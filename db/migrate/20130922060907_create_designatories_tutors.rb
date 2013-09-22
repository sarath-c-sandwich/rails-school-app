class CreateDesignatoriesTutors < ActiveRecord::Migration
  def change
    create_table :designatories_tutors do |t|
      t.references :designatory, index: true
      t.references :tutor, index: true
    end
  end
end
