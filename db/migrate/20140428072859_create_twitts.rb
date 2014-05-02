class CreateTwitts < ActiveRecord::Migration
  def change
    create_table :twitts do |t|
      t.string :body
      t.belongs_to :user

      t.timestamps
    end
    add_index :twitts, :user_id
  end
end
