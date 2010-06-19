class CreateTopics < ActiveRecord::Migration
  def self.up
    create_table :topics do |t|
      t.integer :user_id
      t.integer :voting_id
      t.text :content
      t.integer :rating
      t.string :theme
      t.text :annotation
      
      t.timestamps
    end
  end

  def self.down
    drop_table :topics
  end
end
