module Blog
  class Article < ActiveRecord::Base
    belongs_to :author, class_name: User
    has_many :comments

    def author_name
      self.author.try(:name) || "Anonymous"
    end
  end
end
