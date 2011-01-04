# Accounts
puts "Started creating accounts"
Account.create!(:parent_id => nil, :name => "Cash" ,       :num => 100, :debit =>  400, :credit =>  250, :balance =>   150 )
Account.create!(:parent_id => nil, :name => "Cash 1" ,     :num =>   1, :debit =>  300, :credit =>  200, :balance =>   100 )
Account.create!(:parent_id => nil, :name => "Sub Cash 1" , :num =>   1, :debit =>  300, :credit =>  200, :balance =>   100 )
Account.create!(:parent_id => nil, :name => "Cash 2" ,     :num =>   2, :debit =>  100, :credit =>   50, :balance =>    50 )
Account.create!(:parent_id => nil, :name => "Bank's" ,     :num => 200, :debit => 1500, :credit => 1000, :balance =>   500 )
Account.create!(:parent_id => nil, :name => "Bank 1" ,     :num =>   1, :debit =>  500, :credit =>    0, :balance =>   500 )
Account.create!(:parent_id => nil, :name => "Bank'2" ,     :num =>   2, :debit => 1000, :credit => 1000, :balance =>     0 )
Account.create!(:parent_id => nil, :name => "Fixe asset" , :num => 300, :debit =>    0, :credit => 1000, :balance => -1000 )
puts "Finished creating accounts"
puts "\n"
