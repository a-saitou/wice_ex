require 'spec_helper'

describe "staffs/edit" do
  before(:each) do
    @staff = assign(:staff, stub_model(Staff,
      :name => "MyString",
      :office => "MyString",
      :order => 1,
      :wage => "9.99"
    ))
  end

  it "renders the edit staff form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", staff_path(@staff), "post" do
      assert_select "input#staff_name[name=?]", "staff[name]"
      assert_select "input#staff_office[name=?]", "staff[office]"
      assert_select "input#staff_order[name=?]", "staff[order]"
      assert_select "input#staff_wage[name=?]", "staff[wage]"
    end
  end
end
