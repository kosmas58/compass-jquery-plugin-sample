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



JSON

gridify

{"page":1,
"total_pages":2,
"total_records":13,
"invheaders":[
  {"tax":20.0,"total":120.0,"ship_via":null,"client_id":1,"id":1,"closed":"No","amount":100.0,"note":"note 1","invdate":"2007-10-01"},
 ]}

jqGrid
{"page":"1",
"total":2,
"records":"13",
"rows":[
  {"id":"13","cell":["13","2007-10-06","Client 3","1000.00","0.00","1000.00",null]},
],
"userdata":{"amount":3220,"tax":342,"total":3564,"name":"Totals:"}}{"page":"1","total":2,"records":"13","rows":[{"id":"13","cell":["13","2007-10-06","Client 3","1000.00","0.00","1000.00",null]},{"id":"12","cell":["12","2007-10-06","Client 2","700.00","140.00","840.00",null]},{"id":"11","cell":["11","2007-10-06","Client 1","600.00","120.00","720.00",null]},{"id":"10","cell":["10","2007-10-06","Client 2","100.00","20.00","120.00",null]},{"id":"9","cell":["9","2007-10-06","Client 1","200.00","40.00","240.00",null]},{"id":"8","cell":["8","2007-10-06","Client 3","200.00","0.00","200.00",null]},{"id":"7","cell":["7","2007-10-05","Client 2","120.00","12.00","134.00",null]},{"id":"6","cell":["6","2007-10-05","Client 1","50.00","10.00","60.00",null]},{"id":"5","cell":["5","2007-10-05","Client 3","100.00","0.00","100.00","no tax"]},{"id":"4","cell":["4","2007-10-04","Client 3","150.00","0.00","150.00","no tax"]}],"userdata":{"amount":3220,"tax":342,"total":3564,"name":"Totals:"}}

 
XML

gridify

<?xml version="1.0" encoding="UTF-8"?>
<invheaders>
  <page>1</page>
  <total_pages>2</total_pages>
  <total_records>13</total_records>
  <invheader>
    <amount>1000.0</amount>
    <client_id>3</client_id>
    <closed>No</closed>
    <id>13</id>
    <invdate>2007-10-06</invdate>
    <note nil="true"></note>
    <ship_via nil="true"></ship_via>
    <tax>0.0</tax>
    <total>1000.0</total>
  </invheader>
</invheaders>


jqGrid
<rows>
  <page>1</page>
  <total>2</total>
  <records>13</records>
  <row id='13'>
    <cell>13</cell>
    <cell>2007-10-06</cell>
    <cell><![CDATA[Client 3]]>
    </cell><cell>1000.00</cell>
    <cell>0.00</cell>
    <cell>1000.00</cell>
    <cell>No</cell><cell>
    </cell><cell>
    <![CDATA[]]></cell>
  </row>
</rows>


 
 