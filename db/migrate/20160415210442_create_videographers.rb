class CreateVideographers < ActiveRecord::Migration
  def change
    create_table :videographers do |t|
      t.string :name
      t.string :year

      t.timestamps null: false
    end
  end
end
