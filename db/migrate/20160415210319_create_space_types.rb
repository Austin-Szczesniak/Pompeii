class CreateSpaceTypes < ActiveRecord::Migration
  def change
    create_table :space_types do |t|
      t.string :space

      t.timestamps null: false
    end
  end
end
