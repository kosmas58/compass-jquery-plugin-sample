class Account < ActiveRecord::Base
  acts_as_nested_set
  acts_as_tree
  
  def self.find_for_treegrid(params)
    if params[:nodeid]
      node = find(params[:nodeid])
    else
      node = find_by_name("ROOT")
    end
    list = params[:grid]
    node.children.each do |child|
      child[:demo] = list
      case list
      when "demo1102", "demo1306"
        child[:style] = "nested"
        if child[:rgt] == child[:lft]+1
          child[:leaf] = true
        else
          child[:leaf] = false
        end
      when "demo1206"
        child[:style] = "adjacency"
        if child.children.size > 0
          child[:leaf] = false
        else
          child[:leaf] = true
        end
      else
        raise ArgumentError, "Invalid example '#{list}' for treegrid"
      end
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
  
  gridify :demo1306,
    :title          => I18n.t('txt.jqgrid.demo.35real'),
    :url            => "/jqgrid/demo?model=account",
    :data_type      => :xml,
    :colNames       => [
                        I18n.t('activerecord.attributes.account.name'),
                        I18n.t('activerecord.attributes.account.acc_num'),
                        I18n.t('activerecord.attributes.account.debit'),
                        I18n.t('activerecord.attributes.account.credit'),
                        I18n.t('activerecord.attributes.account.balance'),
                        I18n.t('activerecord.attributes.account.enabled')
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
                          :align => :right },
                        { :name  => 'enabled',
                          :width => 60,
                          :align =>  :center,
                          :edit_options => { :value => "1:0" }}
                       ],
    :height         => :auto,
    :sortable       => false,
    :tree_grid      => true,
    :jqgrid_options => { #:treedatatype   => :json,
                         #:treeGridModel  => :nested,,
                         #:ExpandColClick => true,
                         :ExpandColumn   => :name }
end
