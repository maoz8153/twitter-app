class PhotoTwittsController < ApplicationController

  def create
    content = build_content
    twitt = current_user.twitts.build(content: content)

    if twitt.save
        redirect_to dashboard_path
    else
        flash.alert = "could not twitt"
        redirect_to dashboard_path
    end

  end


  private

  def build_content
    PhotoTwitt.new(photo_twitt_parameters)

  end

  def photo_twitt_parameters
    params.require(:photo_twitt).permit(:image)
  end

end
