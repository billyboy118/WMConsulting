class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :body
      t.string :category
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
