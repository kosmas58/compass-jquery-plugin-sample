class Widgets::DynatreeController < ApplicationController
  protect_from_forgery

  def iframe_1
    respond_to do |format|
      format.html { render :layout => 'dynatree' }
    end
  end

  def data1
    json1 =
        '[
        {"title": "Item 1"},
        {"title": "Folder 2", "isFolder": true, "key": "folder2",
          "children": [
            {"title": "Sub-item 2.1"},
            {"title": "Sub-item 2.2"}
          ]
        },
        {"title": "Folder 3", "isFolder": true, "key": "folder3",
          "children": [
            {"title": "Sub-item 3.1"},
            {"title": "Sub-item 3.2"}
          ]
        },      {"title": "Item 5"}
      ]'

    respond_to do |format|
      # Fields order is important in the to_jqgrid_json method (in this case : [:id,:name])
      # It must be the same as display order in your datagrid
      format.json { render :json => json1, :layout => false }
    end
  end

  def data2
    json2 =
        '[
      {"title": "SubItem 1", "isLazy": true },
      {"title": "SubFolder 2", "isFolder": true, "isLazy": true }
    ]'

    respond_to do |format|
      # Fields order is important in the to_jqgrid_json method (in this case : [:id,:name])
      # It must be the same as display order in your datagrid
      format.json { render :json => json2, :layout => false }
    end
  end

  def data3
    json3 =
        '[
      {"title": "Item 1"},
      {"title": "Folder 2", "isFolder": true, "key": "folder2", "expand": true,
        "children": [
          {"title": "Sub-item 2.1",
            "children": [
                  {"title": "Sub-item 2.1.1",
                    "children": [
                          {"title": "Sub-item 2.1.1.1"},
                          {"title": "Sub-item 2.1.2.2"},
                          {"title": "Sub-item 2.1.1.3"},
                          {"title": "Sub-item 2.1.2.4"}
                        ]
                    },
                  {"title": "Sub-item 2.1.2"},
                  {"title": "Sub-item 2.1.3"},
                  {"title": "Sub-item 2.1.4"}
                ]
            },
          {"title": "Sub-item 2.2"},
          {"title": "Sub-item 2.3 (lazy)", "isLazy": true }
        ]
      },
      {"title": "Folder 3", "isFolder": true, "key": "folder3",
        "children": [
          {"title": "Sub-item 3.1",
            "children": [
                  {"title": "Sub-item 3.1.1"},
                  {"title": "Sub-item 3.1.2"},
                  {"title": "Sub-item 3.1.3"},
                  {"title": "Sub-item 3.1.4"}
                ]
            },
          {"title": "Sub-item 3.2"},
          {"title": "Sub-item 3.3"},
          {"title": "Sub-item 3.4"}
        ]
      },
      {"title": "Lazy Folder 4", "isFolder": true, "isLazy": true, "key": "folder4"},
      {"title": "Item 5"}
    ]'

    respond_to do |format|
      # Fields order is important in the to_jqgrid_json method (in this case : [:id,:name])
      # It must be the same as display order in your datagrid
      format.json { render :json => json3, :layout => false }
    end
  end

  def get_skin
    @dynatree_theme = "start"
    @dynatree_skin = params[:dynatree_skin] || "aero.css"
  end

  before_filter :get_skin, :except => [:data1, :data2, :data3]
end
