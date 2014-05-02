class CreatePhotoTwitts < ActiveRecord::Migration
  def change
    create_table :photo_twitts do |t|
      t.attachment :image
    end
  end
end
