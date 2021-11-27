class AddOptionToSites < ActiveRecord::Migration[6.1]
  def change
    add_column :sites, :option, :string
  end
end
