class CreateTopics < ActiveRecord::Migration
  def self.up
    create_table :topics do |t|
      t.integer :student_id
      t.text :content
      t.integer :rating
      t.string :theme
      t.text :annotation
      t.integer :section_id
      
      t.timestamps
    end
  end

  def self.down
    drop_table :topics
  end
end