class AddExampleToSites < ActiveRecord::Migration[6.1]
  def change
    add_column :sites, :example, :string
  end
end
