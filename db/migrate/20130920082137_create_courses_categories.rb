class CreateCoursesCategories < ActiveRecord::Migration
  def change
    create_table :courses_categories do |t|
      t.references :course, index: true
      t.references :category, index: true
    end
  end
end
