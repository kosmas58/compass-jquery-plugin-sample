   respond_to do |format|
      format.html
      # Fields order is important in the to_jqgrid_json method (in this case : [:id,:name])
      # It must be the same as display order in your datagrid
      format.json { render :json => users.to_jqgrid_json([:id,:pseudo,:firstname,:lastname,:email,:role], 
                                                         params[:page], params[:rows], users.total_entries) }
    end

module JqgridJson
  include ActionView::Helpers::JavaScriptHelper
  include HandleAttributes

  def to_jqgrid_json(attributes, current_page, per_page, total)
    json = %Q({"page":"#{current_page}","total":#{total/per_page.to_i+1},"records":"#{total}")
    if total > 0
      json << %Q(,"rows":[)
      each do |elem|
        elem.id ||= index(elem)
        json << %Q({"id":"#{elem.id}","cell":[)
        couples = elem.attributes.symbolize_keys
        attributes.each do |atr|
          value = get_atr_value(elem, atr, couples)
          value = escape_javascript(value) if value and value.is_a? String
          json << %Q("#{value}",)
        end
        json.chop! << "]},"
      end
      json.chop! << "]}"
    else
      json << "}"
    end
  end
end
