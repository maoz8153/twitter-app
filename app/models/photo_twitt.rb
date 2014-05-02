class PhotoTwitt < ActiveRecord::Base
  has_attached_file :image,
    styles: {   twitt: "200x200>"}
end
