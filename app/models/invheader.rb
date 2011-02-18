class Invheader < ActiveRecord::Base
  belongs_to :client
  has_many :invlines

  def actions
     "<input style='height:22px;width:20px;' type='button' value='E' onclick=\"jQuery('#rowed2').editRow('"#{id}"');\"  />" +
		 "<input style='height:22px;width:20px;' type='button' value='S' onclick=\"jQuery('#rowed2').saveRow('"#{id}"');\"  />" +
		 "<input style='height:22px;width:20px;' type='button' value='C' onclick=\"jQuery('#rowed2').restoreRow('"#{id}"');\" />" 
  end

  def self.userdata(records)
    userdata = {}
    if records
      userdata[:amount]       = records.inject(0) { |sum, hash| sum + hash[:amount] }
      userdata[:tax]          = records.inject(0) { |sum, hash| sum + hash[:tax] }
      userdata[:total]        = records.inject(0) { |sum, hash| sum + hash[:total] }
      userdata['client.name'] = "Totals:"
    end
    userdata
  end

   gridify :demo0502,
     :title          => I18n.t('txt.jqgrid.demo.30cedit'),
     :url            => "/jqgrid/demo",
     :restful        => true,
     :data_type      => :json,
     :rowActions     => true,
     :colInclude     => [:client],
     :colNames       => [
                         I18n.t('txt.jqgrid.demo.actions'),
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
     :colModel       => [
                         { :name     => 'row_actions',
                           :width    =>  40,
                           :sortable => false },
                         { :name     => 'id',
                           :width    =>  50,
                           :align    => :right },
                         { :name     => 'invdate',
                           :width    =>  90,
                           :editable => true },
                         { :name         => 'client_id',
                           :width        => 70,
                           :editable     => true,
                           :edit_type    => :select,
                           :edit_options => { 'dataUrl' => "/jqgrid/demo/clients" } },
                         { :name     => 'amount',
                           :width    =>  80,
                           :align    => :right,
                           :editable => true },
                         { :name     => 'tax',
                           :width    =>  80,
                           :align    => :right,
                           :editable => true },
                         { :name     => 'total',
                           :width    =>  80,
                           :align    => :right,
                           :editable => true },
                         { :name     => 'note',
                           :width    => 150,
                           :sortable => false,
                           :editable => true },
                         { :name     => 'closed',
                           :width    =>  40,
                           :editable => true },
                         { :name     => 'ship_via',
                           :width    =>  40,
                           :editable => true }
                        ],
     :width          => 700,
     :height         => :auto,
     :rows_per_page  => 10,
     :paging_choices => [10,20,30],
     :editable       => true,
     :sort_by        => :id,
     :sort_order     => :desc,
     :jqgrid_options => { :viewsortcols => [true, :horizontal,false],
                          :gridComplete => "javascript: custom_edit" },
     :refresh_button => true,
     :pager          => true

end
