class Timeline
  extend ActiveModel::Naming

 def initialize user
    @user = user
  end

  def twitts
    Twitt.where(user_id: twitt_user_ids)
  end

  private

  def twitt_user_ids
    [@user.id] + @user.followed_user_ids
  end
end