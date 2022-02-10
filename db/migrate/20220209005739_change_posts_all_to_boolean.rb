class ChangePostsAllToBoolean < ActiveRecord::Migration[5.0]
    def up
    change_column :posts, :all, :boolean, using: "all::boolean"
  　end

 　 def down
    change_column :posts, :all, :string, using: "all::boolean"
  　end
end
