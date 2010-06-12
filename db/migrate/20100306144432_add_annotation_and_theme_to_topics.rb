class AddAnnotationAndThemeToTopics < ActiveRecord::Migration
  def self.up
    add_column :topics, :theme, :string
    add_column :topics, :annotation, :text
  end
  def self.down
    remove_column :topics, :theme
    remove_column :topics, :annotation
  end
end
