require 'rails_helper'

RSpec.describe "employees/new", type: :view do
  before(:each) do
    assign(:employee, Employee.new(
      :name => "MyString",
      :email => "MyString",
      :address => "MyText",
      :age => 1,
      :company_name => "MyString"
    ))
  end

  it "renders new employee form" do
    render

    assert_select "form[action=?][method=?]", employees_path, "post" do

      assert_select "input[name=?]", "employee[name]"

      assert_select "input[name=?]", "employee[email]"

      assert_select "textarea[name=?]", "employee[address]"

      assert_select "input[name=?]", "employee[age]"

      assert_select "input[name=?]", "employee[company_name]"
    end
  end
end
