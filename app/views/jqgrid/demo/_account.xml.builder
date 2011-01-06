xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8"
xml.accounts do
  xml.page    1 
  xml.total   1 
  xml.records 1 
  @data.each do |u|
    xml.account do
      xml.id         u.id
      xml.name       u.name
      xml.acc_num    u.acc_num
      xml.credit     u.credit
      xml.debit      u.debit
      xml.balance    u.balance
      xml.level      u.level
      case u.style
      when :adjacency
        xml.parent_id    u.parent_id
        xml.leaf         u.leaf
      else
        # Nested
        xml.lft     u.lft
        xml.rgt     u.rgt
        xml.leaf    u.leaf
      end
      xml.cell    "false"
    end
  end
end
