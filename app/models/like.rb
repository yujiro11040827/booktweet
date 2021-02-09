class Like < ApplicationRecord
  belongs_to :tweet
  belongs_to :user

  varidates_uniqueness_of :tweet_id, scope: :user_id
end
