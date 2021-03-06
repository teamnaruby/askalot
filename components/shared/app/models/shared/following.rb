module Shared
class Following < ActiveRecord::Base
  include Deletable
  include Notifiable

  belongs_to :follower, class_name: :'Shared::User', counter_cache: :followees_count
  belongs_to :followee, class_name: :'Shared::User', counter_cache: :followers_count

  validates :followee_id, presence: true
  validates :follower_id, presence: true

  self.table_name = 'followings'
end
end
