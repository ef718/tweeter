require 'spec_helper'

describe "tweets/edit" do
  before(:each) do
    @tweet = assign(:tweet, stub_model(Tweet,
      :body => "MyText",
      :author => "MyString",
      :user => nil
    ))
  end

  it "renders the edit tweet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tweet_path(@tweet), "post" do
      assert_select "textarea#tweet_body[name=?]", "tweet[body]"
      assert_select "input#tweet_author[name=?]", "tweet[author]"
      assert_select "input#tweet_user[name=?]", "tweet[user]"
    end
  end
end
