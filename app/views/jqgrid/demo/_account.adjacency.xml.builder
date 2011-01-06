xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8"
xml.adjacency_accounts do
  xml.page    1 
  xml.total   1 
  xml.records 1 
  @data.each do |u|
    xml.adjacency_account do
      xml.id         u.id
      xml.name       u.name
      xml.acc_num    u.acc_num
      xml.credit     u.credit
      xml.debit      u.debit
      xml.balance    u.balance
      xml.level      u.level
      xml.parent_id  u.parent_id != nil ? u.parent_id : "NULL"
      xml.leaf       u.parent_id ? "true" : "false"
      xml.cell       "false"
    end
  end
end 
