class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :topic_id
      t.integer :comment_id
      t.integer :user_id
      t.text :content
      t.integer :rating

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
