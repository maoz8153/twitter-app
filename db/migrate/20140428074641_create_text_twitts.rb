class CreateTextTwitts < ActiveRecord::Migration
  def change
    create_table :text_twitts do |t|
      t.string :body
    end
  end
end
