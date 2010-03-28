class Invheader < ActiveRecord::Base
  gridify :demo0101,
    :title          => I18n.t('txt.jqgrid.demo.xml_data'),
    :url            => "/jqgrid/demo",
    :data_type      => :xml,
#    :colNames       => [
#                        'Inv No',
#                        I18n.t('activerecord.attributes.invheader.invdate'),
#                        I18n.t('activerecord.attributes.invheader.client_id'),
#                        I18n.t('activerecord.attributes.invheader.amount'),
#                        I18n.t('activerecord.attributes.invheader.tax'),
#                        I18n.t('activerecord.attributes.invheader.total'),
#                        I18n.t('activerecord.attributes.invheader.notes')
#                       ],
#    :colModel       => [
#                        { :name => 'id', :index => 'id', :width => 75 },
#                        { :name => 'invdate', :index => 'invdate', :width => 90 },
#                        { :name => 'name', :index => 'name', :width => 100 },
#                        { :name => 'amount', :index => 'amount', :width => 80, :align => "right" },
#                        { :name => 'tax', :index => 'tax', :width => 80, :align => "right" },    
#                        { :name => 'total', :index => 'total', :width => 80, :align => "right" },   
#                        { :name => 'note', :index => 'note', :width => 150, :sortable => false }   
#                       ],  
    :search_button  => true,  
    :refresh_button => true,
    :pager          => true
    
  gridify :demo0102,
    :title          => I18n.t('txt.jqgrid.demo.json_data'),
    :url            => "/jqgrid/demo",
    :data_type      => :json,
    :search_button  => true,  
    :refresh_button => true,
    :pager          => true
    
  gridify :demo0103,
    :title          => I18n.t('txt.jqgrid.demo.once'),
    :url            => "/jqgrid/demo",
    :data_type      => :json,
    :rows_per_page  => 20,
    :paging_choices => [10,20,30],
    :pager          => true,
    :load_once      => true       
    
  gridify :demo1401,
    :title          => I18n.t('txt.jqgrid.demo.api'),
    :url            => "/jqgrid/demo",
    :data_type      => :json,
    :width          => 700,
    :rows_per_page  => 10,
    :paging_choices => [10,20,30],
    :search_button  => true,  
    :refresh_button => true,
    :pager          => true       
    
  gridify :demo1402,
    :title          => I18n.t('txt.jqgrid.demo.rtl'),
    :url            => "/jqgrid/demo",
    :data_type      => :json,
    #:direction      => "rtl",
    #:recordpos      => "left", 
    :rows_per_page  => 10,
    :paging_choices => [10,20,30],
    :search_button  => true,  
    :refresh_button => true,
    :pager          => true      
    
  gridify :demo1403,
    :title          => I18n.t('txt.jqgrid.demo.reordering'),
    :url            => "/jqgrid/demo",
    :data_type      => :json,
    :sortable       => true,
    :rows_per_page  => 10,
    :paging_choices => [10,20,30],
    :search_button  => true,  
    :refresh_button => true,
    :pager          => true   
end

