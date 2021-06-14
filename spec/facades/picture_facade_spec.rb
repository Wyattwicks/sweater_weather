require 'rails_helper'

describe "Picture Facade", :vcr do
  it "returns a picture object" do
    location = "denver, co"
    pic = PictureFacade.picture(location)
    expect(pic).to be_a(Picture)
    expect(pic.id).to eq(nil)
    expect(pic.credit).to be_a(Hash)
    expect(pic.description).to be_a(String)
    expect(pic.image_url).to be_a(String)
    expect(pic.credit[:source]).to be_a(String)
    expect(pic.credit[:author]).to be_a(String)
    expect(pic.credit[:author_url]).to be_a(String)

  end
end