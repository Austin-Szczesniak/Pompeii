class CreateRecorders < ActiveRecord::Migration
  def change
    create_table :recorders do |t|
      t.string :name
      t.string :year

      t.timestamps null: false
    end
  end
end
