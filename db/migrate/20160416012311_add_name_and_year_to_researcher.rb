class AddNameAndYearToResearcher < ActiveRecord::Migration
  def change
    add_column :researchers, :name, :string
    add_column :researchers, :year, :string
  end
end
