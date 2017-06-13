require 'rails_helper'

RSpec.describe "departments/new", type: :view do
  before(:each) do
    assign(:department, Department.new(
      :name => "MyString",
      :address => "MyText",
      :revenue => 1
    ))
  end

  it "renders new department form" do
    render

    assert_select "form[action=?][method=?]", departments_path, "post" do

      assert_select "input[name=?]", "department[name]"

      assert_select "textarea[name=?]", "department[address]"

      assert_select "input[name=?]", "department[revenue]"
    end
  end
end
