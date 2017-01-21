require 'rails_helper'

RSpec.describe "gs/edit", type: :view do
  before(:each) do
    @g = assign(:g, G.create!(
      :category => "MyString",
      :name => "MyString"
    ))
  end

  it "renders the edit g form" do
    render

    assert_select "form[action=?][method=?]", g_path(@g), "post" do

      assert_select "input#g_category[name=?]", "g[category]"

      assert_select "input#g_name[name=?]", "g[name]"
    end
  end
end
