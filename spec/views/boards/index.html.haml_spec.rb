require 'spec_helper'

describe "boards/index" do
  before(:each) do
    assign(:boards, [
      stub_model(Board,
        :title => "Title",
        :description => "MyText",
        :preview => nil,
        :user => nil
      ),
      stub_model(Board,
        :title => "Title",
        :description => "MyText",
        :preview => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of boards" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
