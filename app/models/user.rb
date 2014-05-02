class User < ActiveRecord::Base

  include Concerns::Following
  has_many :twitts

end
