require 'spec_helper'

describe "orderers/show" do
  before(:each) do
    @orderer = assign(:orderer, stub_model(Orderer,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
