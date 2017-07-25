class CreateBibliographies < ActiveRecord::Migration
  def change
    create_table :bibliographies do |t|
      t.string :cited_work
      t.string :volume
      t.string :page
      t.text :comment

      t.timestamps null: false
    end
  end
end
