class AddTestToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :test, :string
  end
end
