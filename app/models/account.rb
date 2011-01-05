class Account < ActiveRecord::Base
  acts_as_nested_set
  
  def self.userdata(records)
    userdata = {}
    if records
      
    end
    userdata
  end
  
  gridify :demo1102,
    :title          => I18n.t('txt.jqgrid.demo.33tree'),
    :url            => "/jqgrid/demo?model=account",
    :data_type      => :json,
    :colNames       => [
                        I18n.t('activerecord.attributes.account.name'),
                        I18n.t('activerecord.attributes.account.num'),
                        I18n.t('activerecord.attributes.account.debit'),
                        I18n.t('activerecord.attributes.account.credit'),
                        I18n.t('activerecord.attributes.account.balance')
                       ],
    :colModel       => [
                        { :name  => 'name',
                          :width =>  100 },
                        { :name  => 'num',
                          :width =>  50,
                          :align => :right },
                        { :name  => 'debit',
                          :width =>  80,
                          :align => :right },
                        { :name  => 'credit',
                          :width =>  80,
                          :align => :right },
                        { :name  => 'balance',
                          :width =>  80,
                          :align => :right }
                       ],
    #:width          => :auto,
    :grid_view      => false,
    :height         => :auto,
    :jqgrid_options => { :treeGrid       => true,
                         :treedatatype   => :json,
                         #:treeGridModel  => :nested,,
                         #:ExpandColClick => true,
                         :ExpandColumn   => :name }

end
