class DeleteColumnUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :blogs, :users_id, :user_id
  end
end
