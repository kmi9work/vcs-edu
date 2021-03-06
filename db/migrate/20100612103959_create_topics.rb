class CreateTopics < ActiveRecord::Migration
  def self.up
    create_table :topics do |t|
      t.integer :student_id
      t.text :content
      t.integer :rating
      t.string :title
      t.text :annotation
      t.string :section
      
      t.timestamps
    end
  end

  def self.down
    drop_table :topics
  end
end