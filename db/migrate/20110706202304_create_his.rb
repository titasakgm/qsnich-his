class CreateHis < ActiveRecord::Migration
  def self.up
    create_table :his do |t|
      t.string :table_name
      t.string :column_name
    end
  end

  def self.down
    drop_table :his
  end
end
