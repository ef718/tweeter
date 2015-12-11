require 'spec_helper'

describe "posters/edit" do
  before(:each) do
    @poster = assign(:poster, stub_model(Poster,
      :username => "MyString",
      :user => nil
    ))
  end

  it "renders the edit poster form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", poster_path(@poster), "post" do
      assert_select "input#poster_username[name=?]", "poster[username]"
      assert_select "input#poster_user[name=?]", "poster[user]"
    end
  end
end
