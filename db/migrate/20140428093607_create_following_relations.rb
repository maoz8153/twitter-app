class CreateFollowingRelations < ActiveRecord::Migration
  def change
    create_table :following_relations do |t|
      t.belongs_to :follower
      t.belongs_to :followed_user

      t.timestamps
    end
    add_index :following_relations, :follower_id
    add_index :following_relations, :followed_user_id
  end
end
