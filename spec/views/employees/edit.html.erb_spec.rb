require 'rails_helper'

RSpec.describe "employees/edit", type: :view do
  before(:each) do
    @employee = assign(:employee, Employee.create!(
      :name => "MyString",
      :email => "MyString",
      :address => "MyText",
      :age => 1,
      :company_name => "MyString"
    ))
  end

  it "renders the edit employee form" do
    render

    assert_select "form[action=?][method=?]", employee_path(@employee), "post" do

      assert_select "input[name=?]", "employee[name]"

      assert_select "input[name=?]", "employee[email]"

      assert_select "textarea[name=?]", "employee[address]"

      assert_select "input[name=?]", "employee[age]"

      assert_select "input[name=?]", "employee[company_name]"
    end
  end
end
