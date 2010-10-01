xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8"
xml.invheaders do
  xml.page    params[:page]
  xml.total   @total_count / params[:rows].to_i + 1
  xml.records @total_count
  @data.each do |u|
    xml.invheader :id => u.id do
      xml.id         u.id
      xml.invdate    u.invdate
      xml.client_id  u.client.name
      xml.amount     u.amount
      xml.tax        u.tax
      xml.total      u.total
      xml.note       u.note
      xml.closed     u.closed
      xml.ship_via   u.ship_via
    end
  end
end 
