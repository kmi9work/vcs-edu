class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.string :subject
      t.string :content
      t.integer :student_id
      t.string :student_from
      t.boolean :new, :default => 1
      
      t.timestamps
    end
  end

  def self.down
    drop_table :messages
  end
end
