module Blog
  class Article < ActiveRecord::Base
    belongs_to :author, class_name: User
    has_many :comments


    scope :order_by_recent, -> { order("created_at DESC") }

    def author_name
      self.author.try(:name) || "Anonymous"
    end
  end
end
