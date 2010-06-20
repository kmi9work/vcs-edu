class CreateMarks < ActiveRecord::Migration
  def self.up
    create_table :marks do |t|
      t.string :subject
      t.integer :mark
      
      t.timestamps
    end
  end

  def self.down
    drop_table :marks
  end
end
