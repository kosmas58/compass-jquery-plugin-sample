class Item < ActiveRecord::Base   
    
  gridify :demo1408,
    :title               => I18n.t('txt.jqgrid.demo.tscroll'),
    :url                 => "/jqgrid/demo",
    :data_type           => :json,  
    :colNames            => [
                              'Index',
                              'Name', 
                              'Code'
                            ],
    :colModel            => {
                              :id       => { :name  => 'id',
                                             :width =>  65, 
                                             :align => "right" },
                              :name     => { :name  => 'name',
                                             :width => 150 },
                              :cd       => { :name  => 'cd',
                                             :width =>  100 }
                            },                            
    :row_numbers         => 40,
    :width               => 700,
    :height              => :auto,
    :rows_per_page       => 100,
    :paging_choices      => [10,20,30],
    :sort_by             => :id,
    :sort_order          => :desc,
    :search_button       => true,  
    :refresh_button      => true,
    :pager               => true       
end
