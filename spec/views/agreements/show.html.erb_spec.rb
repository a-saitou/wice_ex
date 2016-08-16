require 'spec_helper'

describe "agreements/show" do
  before(:each) do
    @agreement = assign(:agreement, stub_model(Agreement,
      :name => "Name",
      :orderer_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/1/)
  end
end
