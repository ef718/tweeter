require 'spec_helper'

describe "posters/index" do
  before(:each) do
    assign(:posters, [
      stub_model(Poster,
        :username => "Username",
        :user => nil
      ),
      stub_model(Poster,
        :username => "Username",
        :user => nil
      )
    ])
  end

  it "renders a list of posters" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
