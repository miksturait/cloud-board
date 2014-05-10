require 'spec_helper'

describe "images/index" do
  before(:each) do
    assign(:images, [
      stub_model(Image,
        :image => "Image"
      ),
      stub_model(Image,
        :image => "Image"
      )
    ])
  end

  it "renders a list of images" do
    render
    assert_select "tr>td", :text => "Image".to_s, :count => 2
  end
end
