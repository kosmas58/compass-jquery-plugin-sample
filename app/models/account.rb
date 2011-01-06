class Account < ActiveRecord::Base
  acts_as_nested_set
  acts_as_tree
  
  def self.find_for_treegrid(params)
    list = params[:grid]
    case list
      when "demo1102"
        result = find_nested(params)
      when "demo1206"
        result = find_adjacency(params)
      else
        raise ArgumentError, "Invalid example '#{list}' for treegrid"
    end
    return result
  end
  
  def self.find_nested(params)
    if params[:nodeid]
      node = find(params[:nodeid])
    else
      node = find_by_name("ROOT")
    end
    return node.children
  end
  
  def self.find_adjacency(params)
    if params[:nodeid]
      node = find(params[:nodeid])
    else
      node = find_by_name("ROOT")
    end
    return node.children
  end
  
  gridify :demo1102,
    :title          => I18n.t('txt.jqgrid.demo.33tree'),
    :url            => "/jqgrid/demo?model=account",
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
  
  gridify :demo1206,
    :title          => I18n.t('txt.jqgrid.demo.34adjacency'),
    :url            => "/jqgrid/demo?model=account",
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
