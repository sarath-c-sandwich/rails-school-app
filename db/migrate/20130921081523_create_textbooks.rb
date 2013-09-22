class CreateTextbooks < ActiveRecord::Migration
  def change
    create_table :textbooks do |t|
      t.string :title
      t.string :author
      t.date :published_year

      t.timestamps
    end
  end
end
