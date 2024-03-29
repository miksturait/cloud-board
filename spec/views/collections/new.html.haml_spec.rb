require 'spec_helper'

describe "collections/new" do
  before(:each) do
    assign(:collection, stub_model(Collection,
      :title => "MyString",
      :description => "MyString",
      :user => nil
    ).as_new_record)
  end

  it "renders new collection form" do
    render

    assert_select "form[action=?][method=?]", collections_path, "post" do
      assert_select "input#collection_title[name=?]", "collection[title]"
      assert_select "input#collection_description[name=?]", "collection[description]"
      assert_select "input#collection_user[name=?]", "collection[user]"
    end
  end
end
