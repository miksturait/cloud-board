require 'spec_helper'

describe "collections/index" do
  before(:each) do
    assign(:collections, [
      stub_model(Collection,
        :title => "Title",
        :description => "Description",
        :user => nil
      ),
      stub_model(Collection,
        :title => "Title",
        :description => "Description",
        :user => nil
      )
    ])
  end

  it "renders a list of collections" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
