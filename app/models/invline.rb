class Invline < ActiveRecord::Base
  belongs_to :invheader
  
  before_save :serialize_invline 
  
  gridify :demo0302,
    :url            => "/jqgrid/demo",
    :data_type      => :json,
    :only           => [:num, :item, :qty, :unit, :total],
    :colNames       => [
                         I18n.t('activerecord.attributes.invline.num'),
                         I18n.t('activerecord.attributes.invline.item'),
                         I18n.t('activerecord.attributes.invline.qty'),
                         I18n.t('activerecord.attributes.invline.unit'),
                         I18n.t('activerecord.attributes.invline.total')
                       ],
    :width          => 400,
    :width_fit      => :fitted,
    :height         => :auto,
    :jqgrid_options => { :viewsortcols => [true, :horizontal,false] },
    :search_button  => true,  
    :refresh_button => true,
    :pager          => true  

  private
    def serialize_invline
      self.total = self.qty * self.unit
    end    
end
