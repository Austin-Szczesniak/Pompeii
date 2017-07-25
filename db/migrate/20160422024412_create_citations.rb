class CreateCitations < ActiveRecord::Migration
  def change
    create_table :citations do |t|
      t.string :citation

      t.timestamps null: false
    end
  end
end
