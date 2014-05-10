require 'spec_helper'

describe "collections/edit" do
  before(:each) do
    @collection = assign(:collection, stub_model(Collection,
      :title => "MyString",
      :description => "MyString",
      :user => nil
    ))
  end

  it "renders the edit collection form" do
    render

    assert_select "form[action=?][method=?]", collection_path(@collection), "post" do
      assert_select "input#collection_title[name=?]", "collection[title]"
      assert_select "input#collection_description[name=?]", "collection[description]"
      assert_select "input#collection_user[name=?]", "collection[user]"
    end
  end
end
