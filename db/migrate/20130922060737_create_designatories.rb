class CreateDesignatories < ActiveRecord::Migration
  def change
    create_table :designatories do |t|
      t.string :designator
      t.string :description

      t.timestamps
    end
  end
end
