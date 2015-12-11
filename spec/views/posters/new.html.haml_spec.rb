require 'spec_helper'

describe "posters/new" do
  before(:each) do
    assign(:poster, stub_model(Poster,
      :username => "MyString",
      :user => nil
    ).as_new_record)
  end

  it "renders new poster form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", posters_path, "post" do
      assert_select "input#poster_username[name=?]", "poster[username]"
      assert_select "input#poster_user[name=?]", "poster[user]"
    end
  end
end
