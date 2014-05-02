class MakeTwittsPolymorphic < ActiveRecord::Migration
  def up
    remove_column :twitts, :body
    add_column  :twitts, :content_type, :string
    add_column :twitts, :content_id, :integer
    add_index :twitts, [:content_type, :content_id]
  end

  def down
    remove_index :twitts, column: [:content_type, :content_id]
    remove_column :twitts, :content_id
    remove_column :twitts, :content_type
    add_column :twitts, :body
  end
end
