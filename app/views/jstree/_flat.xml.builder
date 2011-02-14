xml.root do
  xml.item do
    xml.parent_id "0"
    xml.id "node_1"
    xml.state "closed"
    xml.content do
      xml.name do
        xml.cdata! "Node 1"
      end
    end
  end
  xml.item do
    xml.parent_id "0"
    xml.id "node_2"
    xml.content do
      xml.name do
        xml.cdata! "Node 2"
      end
    end
  end
end
   