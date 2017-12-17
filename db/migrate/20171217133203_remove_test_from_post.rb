class RemoveTestFromPost < ActiveRecord::Migration[5.1]
  def change
    remove_column :posts, :test, :string
  end
end
