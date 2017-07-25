class CreateUsages < ActiveRecord::Migration
  def change
    create_table :usages do |t|
      t.string :usage

      t.timestamps null: false
    end
  end
end
