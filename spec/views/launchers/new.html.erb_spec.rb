require 'spec_helper'

describe "launchers/new" do
  before(:each) do
    assign(:launcher, stub_model(Launcher,
      :user_name => "MyString"
    ).as_new_record)
  end

  it "renders new launcher form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", launchers_path, "post" do
      assert_select "input#launcher_user_name[name=?]", "launcher[user_name]"
    end
  end
end
