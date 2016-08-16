require 'spec_helper'

describe "agreements/edit" do
  before(:each) do
    @agreement = assign(:agreement, stub_model(Agreement,
      :name => "MyString",
      :orderer_id => 1
    ))
  end

  it "renders the edit agreement form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", agreement_path(@agreement), "post" do
      assert_select "input#agreement_name[name=?]", "agreement[name]"
      assert_select "input#agreement_orderer_id[name=?]", "agreement[orderer_id]"
    end
  end
end
