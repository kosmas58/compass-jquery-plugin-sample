class Invheader < ActiveRecord::Base
  gridify :demo01,
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
    
  gridify :demo02,
    :title          => I18n.t('txt.jqgrid.demo.json_data'),
    :url            => "/jqgrid/demo",
    :data_type      => :json,
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
    
end

