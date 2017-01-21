require 'rails_helper'

RSpec.describe "gs/index", type: :view do
  before(:each) do
    assign(:gs, [
      G.create!(
        :category => "Category",
        :name => "Name"
      ),
      G.create!(
        :category => "Category",
        :name => "Name"
      )
    ])
  end

  it "renders a list of gs" do
    render
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
