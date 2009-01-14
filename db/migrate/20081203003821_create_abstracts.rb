class CreateAbstracts < ActiveRecord::Migration
  def self.up
    create_table :abstracts do |t|
      t.column :date_found, :datetime 
      t.column :headline, :string, :limit => 150
      t.column :source, :string, :limit => 150
      t.column :link, :string, :limit => 100
      t.column :importance, :string, :limit => 20 
      t.column :abstract_text, :string, :limit => 5000
      t.column :user_id, :integer
      t.timestamps
    end
  end

  def self.down
    drop_table :abstracts
  end
end
