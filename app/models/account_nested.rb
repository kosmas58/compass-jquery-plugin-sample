class AccountNested < ActiveRecord::Base
  acts_as_nested_set
  set_table_name :accounts_nested
  
end
