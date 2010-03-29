class Invheader < ActiveRecord::Base
  belongs_to :client
  
  gridify :demo0101,
    :title          => I18n.t('txt.jqgrid.demo.xml_data'),
    :url            => "/jqgrid/demo",
    :data_type      => :xml,
    :colNames       => [
                        I18n.t('activerecord.attributes.invheader.id'),
                        I18n.t('activerecord.attributes.invheader.invdate'),
                        I18n.t('activerecord.attributes.invheader.client'),
                        I18n.t('activerecord.attributes.invheader.amount'),
                        I18n.t('activerecord.attributes.invheader.tax'),
                        I18n.t('activerecord.attributes.invheader.total'),
                        I18n.t('activerecord.attributes.invheader.note'),
                        I18n.t('activerecord.attributes.invheader.closed'),
                        I18n.t('activerecord.attributes.invheader.ship_via')
                       ],
    :colModel       => {
                         :id       => { :name => 'id',       :width =>  50, :align => "right"  },
                         :invdate  => { :name => 'invdate',  :width =>  90 },
                         :name     => { :name => 'name',     :width => 100 },
                         :amount   => { :name => 'amount',   :width =>  80, :align => "right" },
                         :tax      => { :name => 'tax',      :width =>  80, :align => "right" },    
                         :total    => { :name => 'total',    :width =>  80, :align => "right" },   
                         :note     => { :name => 'note',     :width => 150, :sortable => false },
                         :closed   => { :name => 'closed',   :width =>  40 },
                         :ship_via => { :name => 'ship_via', :width =>  40 }
                       },
    #:include        => :client,
    :height         => :auto,
    :sort_by        => :id,
    :sort_order     => :desc,
    :rows_per_page  => 10,     
    :paging_choices => [10,20,30],  
    #:autowidth:     => true, 
    #:viewrecords    => true,    
    :search_button  => true,  
    :refresh_button => true,
    :pager          => true
    
  gridify :demo0102,
    :title          => I18n.t('txt.jqgrid.demo.json_data'),
    :url            => "/jqgrid/demo",
    :data_type      => :json,
    :colNames       => [
                        I18n.t('activerecord.attributes.invheader.id'),
                        I18n.t('activerecord.attributes.invheader.invdate'),
                        I18n.t('activerecord.attributes.invheader.client'),
                        I18n.t('activerecord.attributes.invheader.amount'),
                        I18n.t('activerecord.attributes.invheader.tax'),
                        I18n.t('activerecord.attributes.invheader.total'),
                        I18n.t('activerecord.attributes.invheader.note'),
                        I18n.t('activerecord.attributes.invheader.closed'),
                        I18n.t('activerecord.attributes.invheader.ship_via')
                       ],
    :colModel       => {
                         :id       => { :name => 'id',       :width =>  50, :align => "right"  },
                         :invdate  => { :name => 'invdate',  :width =>  90 },
                         :name     => { :name => 'name',     :width => 100 },
                         :amount   => { :name => 'amount',   :width =>  80, :align => "right" },
                         :tax      => { :name => 'tax',      :width =>  80, :align => "right" },    
                         :total    => { :name => 'total',    :width =>  80, :align => "right" },   
                         :note     => { :name => 'note',     :width => 150, :sortable => false },
                         :closed   => { :name => 'closed',   :width =>  40 },
                         :ship_via => { :name => 'ship_via', :width =>  40 }
                       },
    :include        => [:client],
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

