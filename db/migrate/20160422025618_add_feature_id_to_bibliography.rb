class AddFeatureIdToBibliography < ActiveRecord::Migration
  def change
    add_column :bibliographies, :feature_id, :int
  end
end
