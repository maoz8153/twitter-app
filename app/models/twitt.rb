class Twitt < ActiveRecord::Base

  belongs_to :user
  belongs_to :content, polymorphic: true
  # validates_associated :content
  default_scope {order("created_at DESC")}

  def self.text_twitts
    where(content_type: 'TextTwitt')
  end

end
