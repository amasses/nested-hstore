class CreatePosts < ActiveRecord::Migration[4.2]
  def self.up
    execute "CREATE EXTENSION IF NOT EXISTS hstore"
    create_table :posts do |t|
      t.hstore :properties
    end
  end
 
  def self.down
    drop_table :posts
  end
end
