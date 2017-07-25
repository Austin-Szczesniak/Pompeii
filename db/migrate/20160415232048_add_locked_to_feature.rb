class AddLockedToFeature < ActiveRecord::Migration
  def change
    add_column :features, :locked, :boolean
  end
end
