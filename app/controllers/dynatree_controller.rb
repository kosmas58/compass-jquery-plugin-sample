class DynatreeController < ApplicationController
  layout 'dynatree', :except => [:iframe_1] 
  
  protect_from_forgery
  
  def data1
    json1 = 
    '[ { title: "Item 1" },
       { title: "Folder 2", isFolder: true, key: "folder2",
         children: [
           { title: "Sub-item 2.1" },
           { title: "Sub-item 2.2" }
         ]
       },
       { title: "Folder 3", isFolder: true, key: "folder3",
         children: [
           { title: "Sub-item 3.1" ,
           { title: "Sub-item 3.2 "}
         ]
       },
       { title: "Lazy Folder 4", isFolder: true, isLazy: true, key: "folder4" },
       { title: "Item 5" }
     ]'
    
    respond_to do |format|
      # Fields order is important in the to_jqgrid_json method (in this case : [:id,:name])
      # It must be the same as display order in your datagrid
      format.json { render :json => json1, :layout => false  }
    end
  end
  
  def data2
    json2 = '[ {title: "SubItem 1", isLazy: true },  {title: "SubFolder 2", isFolder: true, isLazy: true } ]'
    
    respond_to do |format|
      # Fields order is important in the to_jqgrid_json method (in this case : [:id,:name])
      # It must be the same as display order in your datagrid
      format.json { render :json => json2, :layout => false  }
    end
    
  end
  
end
