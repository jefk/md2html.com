class CreateDocs < ActiveRecord::Migration
  def change
    create_table :docs do |t|
      t.string :slug
      t.text :content

      t.timestamps null: false
    end
  end
end
