class CreateSites < ActiveRecord::Migration[6.1]
  def change
    create_table :sites do |t|
      t.string :topic
      t.string :language
      t.text :description
      t.string :address

      t.timestamps
    end
  end
end
