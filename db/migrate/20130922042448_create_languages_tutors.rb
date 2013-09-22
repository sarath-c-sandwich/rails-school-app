class CreateLanguagesTutors < ActiveRecord::Migration
  def change
    create_table :languages_tutors do |t|
      t.references :language, index: true
      t.references :tutor, index: true
    end
  end
end
