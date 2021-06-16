require 'rails_helper'

describe "Backgrounds Facade", :vcr do
  it "returns a picture object" do
    location = "denver, co"
    pic = BackgroundsFacade.picture(location)
    expect(pic).to be_a(Background)
    expect(pic.id).to eq(nil)
    expect(pic.credit).to be_a(Hash)
    expect(pic.description).to be_a(String)
    expect(pic.image_url).to be_a(String)
    expect(pic.credit[:source]).to be_a(String)
    expect(pic.credit[:author]).to be_a(String)
    expect(pic.credit[:author_url]).to be_a(String)

  end
end