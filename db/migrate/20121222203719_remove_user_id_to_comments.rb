class RemoveUserIdToComments < ActiveRecord::Migration
  def up
    remove_column :comments, :user_id
      end

  def down
    add_column :comments, :user_id, :string
  end
end
