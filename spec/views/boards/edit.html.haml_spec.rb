require 'spec_helper'

describe "boards/edit" do
  before(:each) do
    @board = assign(:board, stub_model(Board,
      :title => "MyString",
      :description => "MyText",
      :preview => nil,
      :user => nil
    ))
  end

  it "renders the edit board form" do
    render

    assert_select "form[action=?][method=?]", board_path(@board), "post" do
      assert_select "input#board_title[name=?]", "board[title]"
      assert_select "textarea#board_description[name=?]", "board[description]"
      assert_select "input#board_preview[name=?]", "board[preview]"
      assert_select "input#board_user[name=?]", "board[user]"
    end
  end
end
