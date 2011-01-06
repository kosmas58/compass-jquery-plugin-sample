# Accounts
puts "Started creating Accounts"
Account.create!(:parent_id => nil, :name => "ROOT", :level => 0, :lft =>  1, :rgt =>  18 )
Account.create!(:parent_id =>   1, :name => "Cash" ,        :acc_num => 100, :debit =>  400, :credit =>  250, :balance =>   150, :level => 1, :lft =>  2, :rgt =>  9 )
Account.create!(:parent_id =>   2, :name => "Cash 1" ,      :acc_num =>   1, :debit =>  300, :credit =>  200, :balance =>   100, :level => 2 ,:lft =>  3, :rgt =>  6 )
Account.create!(:parent_id =>   3, :name => "Sub Cash 1" ,  :acc_num =>   1, :debit =>  300, :credit =>  200, :balance =>   100, :level => 3, :lft =>  4, :rgt =>  5 )
Account.create!(:parent_id =>   2, :name => "Cash 2" ,      :acc_num =>   2, :debit =>  100, :credit =>   50, :balance =>    50, :level => 2, :lft =>  7, :rgt =>  8 )
Account.create!(:parent_id =>   1, :name => "Bank's" ,      :acc_num => 200, :debit => 1500, :credit => 1000, :balance =>   500, :level => 1, :lft => 10, :rgt => 15 )
Account.create!(:parent_id =>   6, :name => "Bank 1" ,      :acc_num =>   1, :debit =>  500, :credit =>    0, :balance =>   500, :level => 2, :lft => 11, :rgt => 12 )
Account.create!(:parent_id =>   6, :name => "Bank 2" ,      :acc_num =>   2, :debit => 1000, :credit => 1000, :balance =>     0, :level => 2, :lft => 13, :rgt => 14 )
Account.create!(:parent_id =>   1, :name => "Fixed asset" , :acc_num => 300, :debit =>    0, :credit => 1000, :balance => -1000, :level => 1, :lft => 16, :rgt => 17 )
puts "Finished creating Accounts"
puts "\n"
