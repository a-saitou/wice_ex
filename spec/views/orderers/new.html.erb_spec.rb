require 'spec_helper'

describe "orderers/new" do
  before(:each) do
    assign(:orderer, stub_model(Orderer,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new orderer form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", orderers_path, "post" do
      assert_select "input#orderer_name[name=?]", "orderer[name]"
    end
  end
end
