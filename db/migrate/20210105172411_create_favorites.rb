class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    drop_table :favorites
    create_table :favorites do |t|
      t.integer :user_id
      t.integer :blog_id
      t.timestamps
    end
  end
end
