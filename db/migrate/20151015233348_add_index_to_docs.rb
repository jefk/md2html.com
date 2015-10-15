class AddIndexToDocs < ActiveRecord::Migration
  def change
    add_index :docs, :slug, unique: true
  end
end
