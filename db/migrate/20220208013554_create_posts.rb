class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.integer :posts_id
      t.string :title
      t.date :start
      t.date :end
      t.string :all

      t.timestamps
    end
  end
end
