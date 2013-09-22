class CreateCoursesTextbooks < ActiveRecord::Migration
  def change
    create_table :courses_textbooks do |t|
      t.references :course, index: true
      t.references :textbook, index: true
    end
  end
end
