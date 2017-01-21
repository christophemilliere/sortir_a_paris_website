require 'rails_helper'

RSpec.describe "gs/show", type: :view do
  before(:each) do
    @g = assign(:g, G.create!(
      :category => "Category",
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/Name/)
  end
end
