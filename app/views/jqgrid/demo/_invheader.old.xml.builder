xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8"
xml.invheaders do
  xml.page   params[:page]
  xml.total_pages 2 #(@data.size.to_i / params[:rows].to_i)
  xml.records 13
  @data.each do |u|
    xml.invheader :id => u.id do      
      xml.id         u.id
      xml.invdate    u.invdate
      xml.name       u.client.name
      xml.amount     u.amount
      xml.tax        u.tax
      xml.total      u.total
      xml.note       u.note      
      xml.closed     u.closed
      xml.ship_via   u.ship_via
    end
  end
end 
