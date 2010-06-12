class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.integer :group
      t.string :photo
      t.integer :rating
      t.string :first_name
      t.string :second_name
      t.string :last_name
      t.integer :karma

      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end
