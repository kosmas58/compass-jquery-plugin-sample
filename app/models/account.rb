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
    case list
      when "demo1102", "demo9903"
        data = []
        node.direct_children.each do |child|
          child[:demo] = list
          child[:style] = "nested"
          if child[:rgt] == child[:lft]+1
            child[:isLeaf] = true
          else
            child[:isLeaf] = false
          end
          child[:expanded] = false
          data << child
        end
        return data 
      when "demo1206", "demo9904"
        data = []
        node.children.each do |child|
          child[:demo] = list
          child[:style] = "adjacency"
          if child.children.size > 0
            child[:isLeaf] = false
          else
            child[:isLeaf] = true
          end
          child[:expanded] = false
          data << child
        end
        return data 
      when "demo1306", "demo9905"
        data = []
        node.all_children.each do |child|
          child[:demo] = list
          child[:style] = "nested"
          if child[:rgt] == child[:lft]+1
            child[:isLeaf]   = true
            child[:expanded] = false
          else
            child[:isLeaf]   = false
            child[:expanded] = true
          end
          child[:enbl] = rand(2)
          data << child
        end
        return data 
      else
        raise ArgumentError, "Invalid example '#{list}' for treegrid"
    end
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
    :jqgrid_options => { :ExpandColClick => true,
                         :ExpandColumn   => :name,
                         :treedatatype   => :xml,
                         :treeGridModel  => :nested,
                         :tree_rootlevel => 1 }
  
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
    :jqgrid_options => { :ExpandColClick => true,
                         :ExpandColumn   => :name,
                         :treedatatype   => :xml,
                         :treeGridModel  => :adjacency,
                         :tree_rootlevel => 1 }
  
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
                        { :name            => 'enabled',
                          :width           => 40,
                          :align           =>  :center,
                          :formatter       => :checkbox, 
                          :edit_options    => { :value => "1:0" },
                          :format_options => { :disabled => false }}
                       ],
    :height         => :auto,
    :sortable       => false,
    :tree_grid      => true,
    :jqgrid_options => { :ExpandColClick => true,
                         :ExpandColumn   => :name,
                         :treedatatype   => :xml,
                         :treeGridModel  => :nested,
                         :tree_rootlevel => 1,
                         :afterInsertRow => "javascript: afterInsertRow" }

  gridify :demo9903,
    :title          => I18n.t('txt.jqgrid.demo.33tree'),
    :url            => "/jqgrid/demo?model=account",
    :data_type      => :json,
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
    :jqgrid_options => { :ExpandColClick => true,
                         :ExpandColumn   => :name,
                         :treedatatype   => :json,
                         :treeGridModel  => :nested,
                         :tree_rootlevel => 1 }
  
  gridify :demo9904,
    :title          => I18n.t('txt.jqgrid.demo.34adjacency'),
    :url            => "/jqgrid/demo?model=account",
    :data_type      => :json,
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
    :jqgrid_options => { :ExpandColClick => true,
                         :ExpandColumn   => :name,
                         :treedatatype   => :json,
                         :treeGridModel  => :adjacency,
                         :tree_rootlevel => 1 }
  
  gridify :demo9905,
    :title          => I18n.t('txt.jqgrid.demo.35real'),
    :url            => "/jqgrid/demo?model=account",
    :data_type      => :json,
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
                        { :name            => 'enabled',
                          :width           => 40,
                          :align           =>  :center,
                          :formatter       => :checkbox, 
                          :edit_options    => { :value => "1:0" },
                          :format_options => { :disabled => false }}
                       ],
    :height         => :auto,
    :sortable       => false,
    :tree_grid      => true,
    :jqgrid_options => { :ExpandColClick => true,
                         :ExpandColumn   => :name,
                         :treedatatype   => :json,
                         :treeGridModel  => :nested,
                         :tree_rootlevel => 1,
                         :afterInsertRow => "javascript: afterInsertRow" }
end
