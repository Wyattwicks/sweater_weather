require 'rails_helper'

describe "Picture Facade", :vcr do
  it "returns a picture object" do
    location = "denver, co"
    pic = PictureFacade.get_picture(location)
    expect(picture).to be_a(Picture)
    expect(picture.id).to eq(nil)
    expect(picture.credit).to be_a(Hash)
    expect(picture.description).to be_a(String)
    expect(picture.image_url).to be_a(String)
    expect(picture.credit[:source]).to be_a(String)
    expect(picture.credit[:author]).to be_a(String)
    expect(picture.credit[:author_url]).to be_a(String)

  end
end