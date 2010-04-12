xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8"
xml.rows do
  xml.page     params[:page]
  xml.total    2 #(@data.size.to_i / params[:rows].to_i)
  xml.records  13
  @data.each do |u|
    xml.row :id => u.id do      
      xml.cell        u.id
      xml.cell        u.invdate
      xml.cell do        
        xml.cdata!    u.client.name
      end
      xml.cell        u.amount
      xml.cell        u.tax
      xml.cell        u.total
      xml.cell do        
        xml.cdata!    u.note
      end
      xml.cell do            
        xml.cdata!    u.closed
      end
      xml.cell do        
        xml.cdata!    u.ship_via
      end
    end
  end
end 
