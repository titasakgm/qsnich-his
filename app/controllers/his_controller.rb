class HisController < ApplicationController
  active_scaffold :hi do |conf|
    conf.columns = [:table_name, :column_name, :data_type]
  end
end 
