class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.string :short_title
      t.decimal :duration
      t.decimal :cost_per_day
      t.text :summary
      t.boolean :published

      t.timestamps
    end
  end
end
