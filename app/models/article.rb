class Article < ApplicationRecord
	belongs_to :user
    has_many :likes
    # likesじゃなくてarticlesだった？

    def liked_by?(user)
	    likes.where(user_id: user.id).exists?
    end

end
