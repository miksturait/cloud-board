require 'spec_helper'

describe "Boards" do
  describe "GET /boards" do
    it "works! (now write some real specs)" do
      get boards_path
      expect(response.status).to be(200)
    end
  end
end
