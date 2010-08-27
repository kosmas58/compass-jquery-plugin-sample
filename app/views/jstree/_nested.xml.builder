xml.instruct! :xml, :version=>"1.0", :encoding=>"UTF-8"
xml.root do
  xml.item do
    xml.id              "pxml_1"
    xml.content do
      xml.name do
        xml.cdata!      "Root node 1"
      end
    end
    xml.item do
      xml.id              "pxml_2"
      xml.content do
        xml.name do
          xml.cdata!      "Child node 1"
        end
      end
    end
    xml.item do
      xml.id              "pxml_3"
      xml.content do
        xml.name do
          xml.cdata!      "Child node 2"
        end
      end
    end
    xml.item do
      xml.id              "pxml_4"
      xml.content do
        xml.name do
          xml.cdata!      "Some other child node"
        end
      end
    end
  end
  xml.item do
    xml.id              "pxml_5"
    xml.content do
      xml.name do
        xml.cdata!      "Root node 2"
      end
    end
  end
end
