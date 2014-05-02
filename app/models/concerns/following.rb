module Concerns
  module Following
    extend ActiveSupport::Concern

     included do

       has_many :followed_user_relations,
          foreign_key: :follower_id,
          class_name: 'FollowingRelation'
       has_many :followed_users,
          through: :followed_user_relations

       has_many :follower_relations,
          foreign_key: :follower_user_id,
          class_name: 'FollowingRelation'
       has_many :followers,
          through: :follower_relations

     end

     def following? user
       followed_user_ids.include? user.id
     end

     def can_follow? user
      self != user
     end

     def follow user
       followed_users << user
     end

     def unfollow user
       followed_users.delete(user)
     end

  end
end