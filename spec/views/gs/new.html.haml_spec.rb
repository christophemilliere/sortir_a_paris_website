require 'rails_helper'

RSpec.describe "gs/new", type: :view do
  before(:each) do
    assign(:g, G.new(
      :category => "MyString",
      :name => "MyString"
    ))
  end

  it "renders new g form" do
    render

    assert_select "form[action=?][method=?]", gs_path, "post" do

      assert_select "input#g_category[name=?]", "g[category]"

      assert_select "input#g_name[name=?]", "g[name]"
    end
  end
end
