class CreateTextbooksCourses < ActiveRecord::Migration
  def change
    create_table :textbooks_courses do |t|
      t.references :textbook, index: true
      t.references :course, index: true
    end
  end
end
