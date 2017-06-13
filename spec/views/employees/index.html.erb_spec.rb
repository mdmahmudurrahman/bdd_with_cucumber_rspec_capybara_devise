require 'rails_helper'

RSpec.describe "employees/index", type: :view do
  before(:each) do
    assign(:employees, [
      Employee.create!(
        :name => "Name",
        :email => "Email",
        :address => "MyText",
        :age => 2,
        :company_name => "Company Name"
      ),
      Employee.create!(
        :name => "Name",
        :email => "Email",
        :address => "MyText",
        :age => 2,
        :company_name => "Company Name"
      )
    ])
  end

  it "renders a list of employees" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Company Name".to_s, :count => 2
  end
end
