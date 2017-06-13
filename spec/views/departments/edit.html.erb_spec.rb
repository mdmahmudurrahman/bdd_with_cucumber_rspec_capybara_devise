require 'rails_helper'

RSpec.describe "departments/edit", type: :view do
  before(:each) do
    @department = assign(:department, Department.create!(
      :name => "MyString",
      :address => "MyText",
      :revenue => 1
    ))
  end

  it "renders the edit department form" do
    render

    assert_select "form[action=?][method=?]", department_path(@department), "post" do

      assert_select "input[name=?]", "department[name]"

      assert_select "textarea[name=?]", "department[address]"

      assert_select "input[name=?]", "department[revenue]"
    end
  end
end
