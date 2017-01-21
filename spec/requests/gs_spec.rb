require 'rails_helper'

RSpec.describe "Gs", type: :request do
  describe "GET /gs" do
    it "works! (now write some real specs)" do
      get gs_path
      expect(response).to have_http_status(200)
    end
  end
end
