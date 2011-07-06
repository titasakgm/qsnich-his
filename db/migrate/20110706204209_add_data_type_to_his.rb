class AddDataTypeToHis < ActiveRecord::Migration
  def self.up
    add_column :his, :data_type, :string
  end

  def self.down
    remove_column :his, :data_type
  end
end
