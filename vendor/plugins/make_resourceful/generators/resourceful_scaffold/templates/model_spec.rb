require File.dirname(__FILE__) + '/../spec_helper'

describe <%= singular_name.capitalize %> do
  before(:each) do
    @<%= file_name %> = <%= singular_name.capitalize %>.new
  end

  # Structure
  <% for attribute in attributes -%>
table_has_columns(<%= singular_name.capitalize %>,:<%= attribute.type %>,"<%= attribute.name %>")
  <% end -%>

end
