class Player < ActiveRecord::Base
  has_many :animals
  validates_presence_of :pseudo

  def self.userdata(records)
    userdata = {}
    if records

    end
    userdata
  end

  gridify :example01,
          :title          => "Football players",
          :url            => "/jqgrid/players",
          :data_type      => :json,
          :only           => [
              :id,
              :pseudo,
              :firstname,
              :lastname,
              :email,
              :role
          ],
          :colModel       => [
              {:name      => "id",
               :label     => "ID",
               :width     => 35,
               :resizable => false},
              {:name  => "pseudo",
               :label => "Pseudo"},
              {:name  => "firstname",
               :label => "Firstname"},
              {:name  => "lastname",
               :label => "Lastname"},
              {:name  => "email",
               :label => "Email"},
              {:name  => "role",
               :label => "Role"}
          ],
          :height         => :auto,
          :search_button  => true,
          :refresh_button => true,
          :pager          => true,
          :jqgrid_options => {:viewsortcols => [true, :horizontal, false]}

  gridify :example02,
          :title          => "Football players",
          :url            => "/jqgrid/players",
          :data_type      => :json,
          :only           => [
              :id,
              :pseudo,
              :firstname,
              :lastname,
              :email,
              :role
          ],
          :colModel       => [
              {:name      => "id",
               :label     => "ID",
               :width     => 35,
               :resizable => false},
              {:name  => "pseudo",
               :label => "Pseudo"},
              {:name  => "firstname",
               :label => "Firstname"},
              {:name  => "lastname",
               :label => "Lastname"},
              {:name  => "email",
               :label => "Email"},
              {:name  => "role",
               :label => "Role"}
          ],
          :height         => :auto,
          :width_fit      => :fluid,
          :select_rows    => true,
          :search_button  => false,
          :pager          => true,
          :jqgrid_options => {:viewsortcols => [true, :horizontal, false]}

  gridify :example03,
          :title          => "Football players",
          :url            => "/jqgrid/players",
          :data_type      => :json,
          :only           => [
              :id,
              :pseudo,
              :firstname,
              :lastname,
              :email,
              :role
          ],
          :colModel       => [
              {:name      => "id",
               :label     => "ID",
               :width     => 35,
               :resizable => false},
              {:name  => "pseudo",
               :label => "Pseudo"},
              {:name  => "firstname",
               :label => "Firstname"},
              {:name  => "lastname",
               :label => "Lastname"},
              {:name  => "email",
               :label => "Email"},
              {:name  => "role",
               :label => "Role"}
          ],
          :height         => :auto,
          :select_rows    => "javascript: handleExample03",
          :search_button  => true,
          :refresh_button => true,
          :pager          => true,
          :jqgrid_options => {:viewsortcols => [true, :horizontal, false]}

  gridify :example04,
          :title          => "Football players",
          :url            => "/jqgrid/players",
          :data_type      => :json,
          :only           => [
              :id,
              :pseudo,
              :firstname,
              :lastname,
              :email,
              :role
          ],
          :colModel       => [
              {:name      => "id",
               :label     => "ID",
               :width     => 35,
               :resizable => false},
              {:name  => "pseudo",
               :label => "Pseudo"},
              {:name  => "firstname",
               :label => "Firstname"},
              {:name  => "lastname",
               :label => "Lastname"},
              {:name  => "email",
               :label => "Email"},
              {:name  => "role",
               :label => "Role"}
          ],
          :height         => :auto,
          :select_rows    => true,
          :multi_select   => true,
          :row_numbers    => true,
          :search_button  => true,
          :refresh_button => true,
          :pager          => true,
          :jqgrid_options => {:viewsortcols => [true, :horizontal, false]}

  gridify :example05,
          :title          => "Football players",
          :url            => "/jqgrid/players",
          :data_type      => :json,
          :only           => [
              :id,
              :pseudo,
              :firstname,
              :lastname,
              :email,
              :role
          ],
          :colModel       => [
              {:name      => "id",
               :label     => "ID",
               :width     => 35,
               :resizable => false},
              {:name  => "pseudo",
               :label => "Pseudo"},
              {:name  => "firstname",
               :label => "Firstname"},
              {:name  => "lastname",
               :label => "Lastname"},
              {:name  => "email",
               :label => "Email"},
              {:name  => "role",
               :label => "Role"}
          ],
          :width          => 600,
          :width_fit      => :fitted,
          :height         => :auto,
          :select_rows    => "javascript: handleExample05",
          :search_button  => true,
          :refresh_button => true,
          :pager          => true,
          :jqgrid_options => {:viewsortcols => [true, :horizontal, false]}

  gridify :example06,
          :title          => "Football players",
          :url            => "/jqgrid/players",
          :restful        => true,
          :data_type      => :json,
          :only           => [
              :id,
              :pseudo,
              :firstname,
              :lastname,
              :email,
              :role
          ],
          :colModel       => [
              {:name      => "id",
               :label     => "ID",
               :width     => 35,
               :resizable => false},
              {:name  => "pseudo",
               :label => "Pseudo"},
              {:name  => "firstname",
               :label => "Firstname"},
              {:name  => "lastname",
               :label => "Lastname"},
              {:name  => "email",
               :label => "Email"},
              {:name  => "role",
               :label => "Role"}
          ],
          :height         => :auto,
          :search_button  => true,
          :refresh_button => true,
          :pager          => true,
          :editable       => true,
          :inline_edit    => true,
          :add_button     => true,
          :delete_button  => true,
          :jqgrid_options => {:viewsortcols => [true, :horizontal, false]}

  gridify :example07,
          :title          => "Football players",
          :url            => "/jqgrid/players",
          :restful        => true,
          :data_type      => :json,
          :only           => [
              :id,
              :pseudo,
              :firstname,
              :lastname,
              :email,
              :role
          ],
          :colModel       => [
              {:name      => "id",
               :label     => "ID",
               :width     => 35,
               :resizable => false},
              {:name  => "pseudo",
               :label => "Pseudo"},
              {:name  => "firstname",
               :label => "Firstname"},
              {:name  => "lastname",
               :label => "Lastname"},
              {:name  => "email",
               :label => "Email"},
              {:name         => "role",
               :label        => "Role",
               :edit_type    => :select,
               :edit_options => {:value => ("admin:admin;user:user;defender:defender")}}
          ],
          :height         => :auto,
          :search_button  => true,
          :refresh_button => true,
          :pager          => true,
          :editable       => true,
          :edit_button    => true,
          :add_button     => true,
          :delete_button  => true,
          :error_handler  => "javascript: afterSubmit",
          :jqgrid_options => {:viewsortcols => [true, :horizontal, false]}

  gridify :example08,
          :title          => "Football players",
          :url            => "/jqgrid/players",
          :restful        => true,
          :data_type      => :json,
          :only           => [
              :id,
              :pseudo,
              :firstname,
              :lastname,
              :email,
              :role
          ],
          :colModel       => [
              {:name      => "id",
               :label     => "ID",
               :width     => 35,
               :resizable => false},
              {:name  => "pseudo",
               :label => "Pseudo"},
              {:name         => "firstname",
               :label        => "Firstname",
               :edit_type    => :checkbox,
               :edit_options => {:value => ("Yes:No")}},
              {:name  => "lastname",
               :label => "Lastname"},
              {:name         => "email",
               :label        => "Email",
               :edit_type    => :textarea,
               :edit_options => {:rows => 3,
                                 :cols => 30}},
              {:name         => "role",
               :label        => "Role",
               :edit_type    => :select,
               :edit_options => {:value => ("admin:admin;user:user;defender:defender")}}
          ],
          :height         => :auto,
          :search_button  => true,
          :refresh_button => true,
          :pager          => true,
          :editable       => true,
          :inline_edit    => true,
          :add_button     => true,
          :delete_button  => true,
          :jqgrid_options => {:viewsortcols => [true, :horizontal, false]}

  gridify :example09,
          :title               => "Football players",
          :url                 => "/jqgrid/players",
          :restful             => true,
          :data_type           => :json,
          :only                => [
              :id,
              :pseudo,
              :firstname,
              :lastname,
              :email,
              :role
          ],
          :colModel            => [
              {:name      => "id",
               :label     => "ID",
               :width     => 35,
               :resizable => false},
              {:name  => "pseudo",
               :label => "Pseudo"},
              {:name         => "firstname",
               :label        => "Firstname",
               :edit_type    => :checkbox,
               :edit_options => {:value => ("Yes:No")}},
              {:name  => "lastname",
               :label => "Lastname"},
              {:name         => "email",
               :label        => "Email",
               :edit_type    => :textarea,
               :edit_options => {:rows => 3,
                                 :cols => 30}},
              {:name         => "role",
               :label        => "Role",
               :edit_type    => :select,
               :edit_options => {:value => ("admin:admin;user:user;defender:defender")}}
          ],
          :height              => :auto,
          :search_button       => true,
          :refresh_button      => true,
          :pager               => true,
          :editable            => true,
          :inline_edit         => true,
          :inline_edit_handler => "pickDates",
          :add_button          => true,
          :delete_button       => true,
          :jqgrid_options      => {:viewsortcols => [true, :horizontal, false]}

  gridify :example10,
          :title          => "Football players",
          :url            => "/jqgrid/players",
          :data_type      => :json,
          :only           => [
              :id,
              :pseudo,
              :firstname,
              :lastname,
              :email,
              :role
          ],
          :colModel       => [
              {:name      => "id",
               :label     => "ID",
               :width     => 35,
               :resizable => false},
              {:name  => "pseudo",
               :label => "Pseudo"},
              {:name  => "firstname",
               :label => "Firstname"},
              {:name  => "lastname",
               :label => "Lastname"},
              {:name  => "email",
               :label => "Email"},
              {:name  => "role",
               :label => "Role"}
          ],
          :width          => 600,
          :width_fit      => :fitted,
          :height         => :auto,
          :search_button  => true,
          :refresh_button => true,
          :pager          => true,
          :sub_grid       => true,
          :sub_grid_url   => "/jqgrid/animals/?example=10",
          :sub_grid_model => [
              {
                  :name  => ["ID", "Name"],
                  :width => [55, 200]
              }
          ],
          :jqgrid_options => {:viewsortcols => [true, :horizontal, false]}

  gridify :example11,
          :title          => "Football players",
          :url            => "/jqgrid/players",
          :data_type      => :json,
          :only           => [
              :id,
              :pseudo,
              :firstname,
              :lastname,
              :email,
              :role
          ],
          :colModel       => [
              {:name      => "id",
               :label     => "ID",
               :width     => 35,
               :resizable => false},
              {:name  => "pseudo",
               :label => "Pseudo"},
              {:name  => "firstname",
               :label => "Firstname"},
              {:name  => "lastname",
               :label => "Lastname"},
              {:name  => "email",
               :label => "Email"},
              {:name  => "role",
               :label => "Role"}
          ],
          :width          => 600,
          :width_fit      => :fitted,
          :height         => :auto,
          :search_button  => true,
          :refresh_button => true,
          :pager          => true,
          :sub_grid       => true,
          :sub_grid_url   => "/jqgrid/animals/?example=10",
          :sub_grid_model => [
              {
                  :name  => ["ID", "Name"],
                  :width => [55, 200]
              }
          ],
          :jqgrid_options => {:viewsortcols => [true, :horizontal, false]}

  gridify :example12,
          :title          => "Football players",
          :url            => "/jqgrid/players",
          :data_type      => :json,
          :only           => [
              :id,
              :pseudo,
              :firstname,
              :lastname,
              :email,
              :role
          ],
          :colModel       => [
              {:name      => "id",
               :label     => "ID",
               :width     => 35,
               :resizable => false},
              {:name  => "pseudo",
               :label => "Pseudo"},
              {:name  => "firstname",
               :label => "Firstname"},
              {:name  => "lastname",
               :label => "Lastname"},
              {:name  => "email",
               :label => "Email"},
              {:name  => "role",
               :label => "Role"}
          ],
          :width          => 600,
          :width_fit      => :fitted,
          :height         => :auto,
          :search_button  => true,
          :refresh_button => true,
          :pager          => true,
          :sub_grid       => true,
          :sub_grid_url   => "/jqgrid/animals/?example=10",
          :sub_grid_model => [
              {
                  :name  => ["ID", "Name"],
                  :width => [55, 200]
              }
          ],
          :jqgrid_options => {:viewsortcols => [true, :horizontal, false]}

  gridify :example13,
          :title          => "Football players",
          :url            => "/jqgrid/players",
          :restful        => true,
          :data_type      => :json,
          :only           => [
              :id,
              :pseudo,
              :firstname,
              :lastname,
              :email,
              :role
          ],
          :colModel       => [
              {:name      => "id",
               :label     => "ID",
               :width     => 35,
               :resizable => false},
              {:name         => "pseudo",
               :label        => "Pseudo",
               :form_options => {:rowpos    => 1,
                                 :elmprefix => "(*)&nbsp;&nbsp"},
               :edit_options => {:size => 22},
               :validations  => {:required => true}},
              {:name         => "firstname",
               :label        => "Firstname",
               :form_options => {:rowpos => 4,
                                 :label  => "A label"},
               :edit_options => {:size => 22}},
              {:name         => "lastname",
               :label        => "Lastname",
               :form_options => {:rowpos => 5},
               :edit_options => {:size => 22}},
              {:name         => "email",
               :label        => "Email",
               :form_options => {:rowpos => 3},
               :edit_options => {:size => 22}},
              {:name         => "role",
               :label        => "Role",
               :edit_type    => :select,
               :form_options => {:rowpos => 2},
               :edit_options => {:value => ("admin:admin;user:user;defender:defender"), :size => 22}}
          ],
          :height         => :auto,
          :search_button  => true,
          :refresh_button => true,
          :pager          => true,
          :editable       => true,
          :inline_edit    => true,
          :add_button     => true,
          :delete_button  => true,
          :jqgrid_options => {:viewsortcols => [true, :horizontal, false]}
end
