class Dashboard

  def initialize user
    @user = user
  end

  def new_text_twitt
    TextTwitt.new
  end

  def new_photo_twitt
    PhotoTwitt.new
  end

  def timeline
    Timeline.new(@user)
  end
end
