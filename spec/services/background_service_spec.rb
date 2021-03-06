require 'rails_helper'

RSpec.describe "background API Service" do
  describe "returns pictures for location", :vcr do
    it "returns pictures for a given location" do 
      location = "denver, co"
      response = BackgroundService.get_picture(location)
      expect(response).to be_a(Hash)
      expect(response[:results][0][:urls]).to be_a(Hash)
      expect(response[:results][0][:urls]).to have_key(:full)
    end
  end
end