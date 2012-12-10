class CreateVotes < ActiveRecord::Migration
  def up
    create_table :votes do |t|
      t.integer :post_id
      t.string :direction
      t.timestamps
    end
  end

  def down
    drop_table :votes
  end
end
