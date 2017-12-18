class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :post_id
      t.string :int
      t.string :content
      t.string :text

      t.timestamps
    end
  end
end
