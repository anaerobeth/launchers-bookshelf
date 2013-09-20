require 'spec_helper'

describe "BookLaunchers" do
  describe "GET /book_launchers" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get book_launchers_path
      response.status.should be(200)
    end
  end
end
