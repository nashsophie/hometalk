class CreateComments < ActiveRecord::Migration
  def up
    create_table :comments do |t|
      t.integer :post_id
      t.text :content
      t.timestamps
    end
  end

  def down
    drop_table :comments
  end
end
