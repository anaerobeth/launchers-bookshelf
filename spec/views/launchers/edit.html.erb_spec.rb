require 'spec_helper'

describe "launchers/edit" do
  before(:each) do
    @launcher = assign(:launcher, stub_model(Launcher,
      :user_name => "MyString"
    ))
  end

  it "renders the edit launcher form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", launcher_path(@launcher), "post" do
      assert_select "input#launcher_user_name[name=?]", "launcher[user_name]"
    end
  end
end
