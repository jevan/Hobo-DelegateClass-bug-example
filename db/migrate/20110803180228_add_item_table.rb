class AddItemTable < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.date  :rich_field
      t.datetime :created_at
      t.datetime :updated_at
    end
  end

  def self.down
    drop_table :items
  end
end
