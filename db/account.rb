# Accounts
puts "Started creating accounts"
Account.create!(:parent_id => nil, :name => "Cash" ,        :num => 100, :debit =>  400, :credit =>  250, :balance =>   150, :level => 0, :lft =>  1, :rgt =>  8 )
Account.create!(:parent_id =>   1, :name => "Cash 1" ,      :num =>   1, :debit =>  300, :credit =>  200, :balance =>   100, :level => 1 ,:lft =>  2, :rgt =>  5 )
Account.create!(:parent_id =>   2, :name => "Sub Cash 1" ,  :num =>   1, :debit =>  300, :credit =>  200, :balance =>   100, :level => 2, :lft =>  3, :rgt =>  4 )
Account.create!(:parent_id =>   1, :name => "Cash 2" ,      :num =>   2, :debit =>  100, :credit =>   50, :balance =>    50, :level => 1, :lft =>  6, :rgt =>  7 )
Account.create!(:parent_id => nil, :name => "Bank's" ,      :num => 200, :debit => 1500, :credit => 1000, :balance =>   500, :level => 0, :lft =>  9, :rgt => 14 )
Account.create!(:parent_id =>   5, :name => "Bank 1" ,      :num =>   1, :debit =>  500, :credit =>    0, :balance =>   500, :level => 1, :lft => 10, :rgt => 11 )
Account.create!(:parent_id =>   5, :name => "Bank'2" ,      :num =>   2, :debit => 1000, :credit => 1000, :balance =>     0, :level => 1, :lft => 12, :rgt => 13 )
Account.create!(:parent_id => nil, :name => "Fixed asset" , :num => 300, :debit =>    0, :credit => 1000, :balance => -1000, :level => 0, :lft => 15, :rgt => 16 )
puts "Finished creating accounts"
puts "\n"
