require 'spec_helper'

describe "tweets/new" do
  before(:each) do
    assign(:tweet, stub_model(Tweet,
      :body => "MyText",
      :author => "MyString",
      :user => nil
    ).as_new_record)
  end

  it "renders new tweet form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tweets_path, "post" do
      assert_select "textarea#tweet_body[name=?]", "tweet[body]"
      assert_select "input#tweet_author[name=?]", "tweet[author]"
      assert_select "input#tweet_user[name=?]", "tweet[user]"
    end
  end
end
