class CreateFloorplans < ActiveRecord::Migration
  def change
    create_table :floorplans do |t|
      t.integer :feature_id

      t.timestamps null: false
    end
  end
end
