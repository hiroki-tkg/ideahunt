class CreateCommentPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :comment_posts do |t|
      t.integer :comment_id
      t.integer :post_id

      t.timestamps
    end
  end
end
