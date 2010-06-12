class CreateVotings < ActiveRecord::Migration
  def self.up
    create_table :votings do |t|
      t.integer :topic_id
      t.string :variants
      t.integer :answers 

      t.timestamps
    end
  end

  def self.down
    drop_table :votings
  end
end
