class CreateCheats < ActiveRecord::Migration
  def self.up
    create_table :cheats do |t|
      t.integer :language_id
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :cheats
  end
end
