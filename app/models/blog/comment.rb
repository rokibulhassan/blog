module Blog
  class Comment < ActiveRecord::Base
    belongs_to :author, class_name: User
    belongs_to :article

    scope :order_by_recent, -> { order("created_at DESC") }
    
    def author_name
      self.author.try(:name) || "Anonymous"
    end

    def author_avatar
      image_url = self.author.image.photo.url(:small) rescue "/assets/small/missing.png"
      "<img class='img-circle' src='#{image_url}'>".html_safe
    end
  end
end
