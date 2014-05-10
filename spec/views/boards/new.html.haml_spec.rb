require 'spec_helper'

describe "boards/new" do
  before(:each) do
    assign(:board, stub_model(Board,
      :title => "MyString",
      :description => "MyText",
      :preview => nil,
      :user => nil
    ).as_new_record)
  end

  it "renders new board form" do
    render

    assert_select "form[action=?][method=?]", boards_path, "post" do
      assert_select "input#board_title[name=?]", "board[title]"
      assert_select "textarea#board_description[name=?]", "board[description]"
      assert_select "input#board_preview[name=?]", "board[preview]"
      assert_select "input#board_user[name=?]", "board[user]"
    end
  end
end
