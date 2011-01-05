class NestedAccount < ActiveRecord::Base
  set_table_name :accounts
  acts_as_nested_set
  
  def self.userdata(records)
    userdata = {}
    if records
      
    end
    userdata
  end
  
  gridify :demo1102,
    :title          => I18n.t('txt.jqgrid.demo.33tree'),
    :url            => "/jqgrid/demo?model=nested_account",
    :data_type      => :xml,
    :colNames       => [
                        I18n.t('activerecord.attributes.account.name'),
                        I18n.t('activerecord.attributes.account.acc_num'),
                        I18n.t('activerecord.attributes.account.debit'),
                        I18n.t('activerecord.attributes.account.credit'),
                        I18n.t('activerecord.attributes.account.balance')
                       ],
    :colModel       => [
                        { :name  => 'name',
                          :width =>  100 },
                        { :name  => 'acc_num',
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
    :height         => :auto,
    :sortable       => false,
    :tree_grid      => true,
    :jqgrid_options => { #:treedatatype   => :json,
                         #:treeGridModel  => :nested,,
                         #:ExpandColClick => true,
                         :ExpandColumn   => :name }
end
