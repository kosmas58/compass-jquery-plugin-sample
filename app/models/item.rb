class Item < ActiveRecord::Base     
    
  gridify :demo0306,
    :url                 => "/jqgrid/demo?model=item",
    :data_type           => :json,  
    :colNames            => [
                              'Index',
                              'Name', 
                              'Code'
                            ],
    :colModel            => {
                              :id       => { :name  => 'id',
                                             :width =>  20, 
                                             :align => :right },
                              :name     => { :name  => 'name',
                                             :width => 150 },
                              :cd       => { :name  => 'cd',
                                             :width =>  100 }
                            },  
    :width               => 700,
    :height              => :auto,
    :rows_per_page       => 12,
    :paging_choices      => [10,20,30],
    :sort_by             => :id,
    :sort_order          => :asc,
    :search_button       => true,  
    :refresh_button      => true,
    :pager               => true  
    
  gridify :demo1302,
    :title               => I18n.t('txt.jqgrid.demo.view'),
    :url                 => "/jqgrid/demo?model=item",
    :data_type           => :json,  
    :colNames            => [
                              'Index',
                              'Name', 
                              'Code'
                            ],
    :colModel            => {
                              :id       => { :name  => 'id',
                                             :width =>  20, 
                                             :align => :right },
                              :name     => { :name  => 'name',
                                             :width => 150 },
                              :cd       => { :name  => 'cd',
                                             :width =>  100 }
                            },                            
    :row_numbers         => 40,
    :width               => 700,
    :height              => :auto,
    :rows_per_page       => 200,
    :paging_choices      => [100,200,300],
    :sort_by             => :id,
    :sort_order          => :asc,
    :search_button       => true,  
    :refresh_button      => true,
    :pager               => true
    
  gridify :demo1408,
    :title               => I18n.t('txt.jqgrid.demo.tscroll'),
    :url                 => "/jqgrid/demo?model=item",
    :data_type           => :json,  
    :colNames            => [
                              'Index',
                              'Name', 
                              'Code'
                            ],
    :colModel            => {
                              :id       => { :name  => 'id',
                                             :width =>  20, 
                                             :align => :right },
                              :name     => { :name  => 'name',
                                             :width => 150 },
                              :cd       => { :name  => 'cd',
                                             :width =>  100 }
                            },                            
    :row_numbers         => 40,
    :width               => 700,
    :height              => 255,
    :rows_per_page       => 100,
    :paging_choices      => [10,20,30],
    :sort_by             => :id,
    :sort_order          => :asc,
    :jqgrid_options      => { :scroll => 1 },
    :search_button       => true,  
    :refresh_button      => true,
    :pager               => true
  
  gridify :demo1502,
    :title               => I18n.t('txt.jqgrid.demo.37server'),
    :url                 => "/jqgrid/demo?model=item",
    :data_type           => :json,  
    :colNames            => [
                              'Index',
                              'Name', 
                              'Code'
                            ],
    :colModel            => {
                              :id       => { :name  => 'id',
                                             :width =>  20, 
                                             :align => :right },
                              :name     => { :name  => 'name',
                                             :width => 150 },
                              :cd       => { :name  => 'cd',
                                             :width =>  100 }
                            },                            
    :row_numbers         => 40,
    :rows_per_page       => 50,
    :total_rows          => 2000,
    :width               => 700,
    :height              => 255,
    :paging_choices      => [20,30,50],
    :sort_by             => :id,
    :sort_order          => :asc,
    :pager               => true
  
  gridify :demo1503,
    :title               => I18n.t('txt.jqgrid.demo.37single'),
    :url                 => "/jqgrid/demo?model=item",
    :data_type           => :json,  
    :colNames            => [
                              'Index',
                              'Name', 
                              'Code'
                            ],
    :colModel            => {
                              :id       => { :name  => 'id',
                                             :width =>  20, 
                                             :align => :right },
                              :name     => { :name  => 'name',
                                             :width => 150 },
                              :cd       => { :name  => 'cd',
                                             :width =>  100 }
                            },                           
    :row_numbers         => 40,
    :rows_per_page       => 50,
    :total_rows          => 2000,
    :width               => 700,
    :height              => 255,
    :paging_choices      => [20,30,50],
    :sort_by             => :id,
    :sort_order          => :asc,
    :search_button       => true,  
    :refresh_button      => true,
    :pager               => true
  
  gridify :demo1504,
    :title               => I18n.t('txt.jqgrid.demo.37multiple'),
    :url                 => "/jqgrid/demo?model=item",
    :data_type           => :json,  
    :colNames            => [
                              'Index',
                              'Name', 
                              'Code'
                            ],
    :colModel            => {
                              :id       => { :name  => 'id',
                                             :width =>  20, 
                                             :align => :right },
                              :name     => { :name  => 'name',
                                             :width => 150 },
                              :cd       => { :name  => 'cd',
                                             :width =>  100 }
                            },                           
    :row_numbers         => 40,
    :rows_per_page       => 50,
    :total_rows          => 2000,
    :width               => 700,
    :height              => 255,
    :paging_choices      => [20,30,50],
    :sort_by             => :id,
    :sort_order          => :asc,
    :search_advanced     => true,  
    :search_button       => true,  
    :refresh_button      => true,
    :pager               => true
  
  gridify :demo1505,
    :title               => I18n.t('txt.jqgrid.demo.37scroll'),
    :url                 => "/jqgrid/demo?model=item",
    :data_type           => :json,  
    :colNames            => [
                              'Index',
                              'Name', 
                              'Code'
                            ],
    :colModel            => {
                              :id       => { :name  => 'id',
                                             :width =>  20, 
                                             :align => :right },
                              :name     => { :name  => 'name',
                                             :width => 150 },
                              :cd       => { :name  => 'cd',
                                             :width =>  100 }
                            },                           
    :row_numbers         => 40,
    :rows_per_page       => 50,
    :total_rows          => 2000,
    :width               => 700,
    :height              => 255,
    :paging_choices      => [20,30,50],
    :sort_by             => :id,
    :sort_order          => :asc,
    :jqgrid_options      => { :scroll => 1 },
    :search_advanced     => true,  
    :search_button       => true,  
    :refresh_button      => true,
    :pager               => true
  
  gridify :demo1506,
    :title               => I18n.t('txt.jqgrid.demo.37toolbar'),
    :url                 => "/jqgrid/demo?model=item",
    :data_type           => :json,  
    :colNames            => [
                              'Index',
                              'Name', 
                              'Code'
                            ],
    :colModel            => {
                              :id       => { :name  => 'id',
                                             :width =>  20, 
                                             :align => :right },
                              :name     => { :name  => 'name',
                                             :width => 150 },
                              :cd       => { :name  => 'cd',
                                             :width =>  100 }
                            },                           
    :row_numbers         => 40,
    :rows_per_page       => 50,
    :total_rows          => 2000,
    :width               => 700,
    :height              => 255,
    :paging_choices      => [20,30,50],
    :sort_by             => :id,
    :sort_order          => :asc,
    :search_toolbar      => true,  
    :refresh_button      => true,
    :pager               => true
  
end
