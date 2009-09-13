xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8"
xml.rows do
  xml.page params[:page]
  xml.total_pages(@people.size.to_i / params[:rows].to_i)
  xml.records{@people.size}
  @people.each do |u|
    xml.row :id => u.id do
      xml.cell u.title
      xml.cell u.first_name
      xml.cell u.last_name
      xml.cell u.i_can_has_cheezburger
    end
  end
end 