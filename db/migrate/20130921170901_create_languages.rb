class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :language
      t.string :short_code

      t.timestamps
    end
  end
end
