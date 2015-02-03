class CreateBlogComments < ActiveRecord::Migration
  def change
    create_table :blog_comments do |t|
      t.integer :article_id
      t.text :content
      t.integer :author_id

      t.timestamps
    end
  end
end
