xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8"
xml.invheaders do
  xml.page   params[:page]
  xml.total_pages 2 #(@data.size.to_i / params[:rows].to_i)
  xml.records 13
  @data.each do |u|
    xml.invheader :id => u.id do
      xml.amount     u.amount
      xml.name       u.client.name
      xml.closed     u.closed
      xml.id         u.id
      xml.invdate    u.invdate
      xml.note       u.note
      xml.ship_via   u.ship_via
      xml.tax        u.tax
      xml.total      u.total
    end
  end
end 
