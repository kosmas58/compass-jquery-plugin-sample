class Player < ActiveRecord::Base
  gridify :grid,
    :url => "/jqgrid/players"
end
