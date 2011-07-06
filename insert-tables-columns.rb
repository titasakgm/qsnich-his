#!/usr/bin/ruby

require 'postgres'

def insert(t,c)
  con = PGconn.connect("localhost",5432,nil,nil,"schema_development","postgres")
  sql = "INSERT INTO his(table_name,column_name) VALUES ("
  sql += "'#{t}','#{c}' )"
  res = con.exec(sql)
  con.close
end

src = open("list-all-tables-columns").readlines
src.each do |l|
  f = l.chomp.split('|')
  insert(f[0],f[1])
end


