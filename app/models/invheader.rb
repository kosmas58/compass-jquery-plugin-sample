class Invheader < ActiveRecord::Base
  belongs_to :client
  has_many :invlines

  def self.userdata(records)
    userdata = {}
    if records
      userdata[:amount] = records.inject(0) { |sum, hash| sum + hash[:amount] }
      userdata[:tax] = records.inject(0) { |sum, hash| sum + hash[:tax] }
      userdata[:total] = records.inject(0) { |sum, hash| sum + hash[:total] }
      userdata['client.name'] = "Totals:"
    end
    userdata
  end

  gridify :demo1701,
          :title => I18n.t('txt.jqgrid.demo.40colspan'),
          :url => "/widgets/jqgrid/demo",
          :data_type => :json,
          :colInclude => [:client],
          :colNames => [
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
          :colModel => [
              {:name => 'id',
               :width => 50,
               :align => :right},
              {:name => 'invdate',
               :width => 90,
               :formatter => :date},
              {:name => 'client_id',
               :width => 100,
               :sort_type => :text},
              {:name => 'amount',
               :width => 80,
               :align => :right},
              {:name => 'tax',
               :width => 80,
               :align => :right},
              {:name => 'total',
               :width => 80,
               :align => :right},
              {:name => 'note',
               :width => 150,
               :sortable => false},
              {:name => 'closed',
               :width => 40},
              {:name => 'ship_via',
               :width => 40}
          ],
          :width => 700,
          :height => :auto,
          :rows_per_page => 10,
          :paging_choices => [10, 20, 30],
          :sort_by => :invdate,
          :sort_order => :desc,
          :jqgrid_options => {:viewsortcols => [true, :horizontal, false]},
          :refresh_button => true,
          :pager => true

  gridify :demo1702,
          :title => I18n.t('txt.jqgrid.demo.40keyboard'),
          :url => "/widgets/jqgrid/demo",
          :data_type => :json,
          :colInclude => [:client],
          :colNames => [
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
          :colModel => [
              {:name => 'id',
               :width => 50,
               :align => :right},
              {:name => 'invdate',
               :width => 90,
               :formatter => :date},
              {:name => 'client_id',
               :width => 100,
               :sort_type => :text},
              {:name => 'amount',
               :width => 80,
               :align => :right},
              {:name => 'tax',
               :width => 80,
               :align => :right},
              {:name => 'total',
               :width => 80,
               :align => :right},
              {:name => 'note',
               :width => 150,
               :sortable => false},
              {:name => 'closed',
               :width => 40},
              {:name => 'ship_via',
               :width => 40}
          ],
          :width => 700,
          :height => :auto,
          :rows_per_page => 10,
          :paging_choices => [10, 20, 30],
          :sort_by => :invdate,
          :sort_order => :desc,
          :jqgrid_options => {:viewsortcols => [true, :horizontal, false]},
          :refresh_button => true,
          :pager => true


end
