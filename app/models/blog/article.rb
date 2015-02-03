module Blog
  class Article < ActiveRecord::Base

    def created_by
      user = User.where(id: self.author_id).first
      user.try(:name) || "Anonymous"
    end
  end
end
