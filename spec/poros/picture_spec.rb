require 'rails_helper'

RSpec.describe "Picture PORO" do
  it "returns a picture object" do
    data = File.read("spec/fixtures/picture.json")
    response = JSON.parse(data, symbolize_names: true) 
    picture = Picture.new(response)
    
    expect(picture).to be_a(Picture)
    expect(picture.id).to eq(nil)
    expect(picture.credit).to be_a(Hash)
    expect(picture.description).to eq("city skyline during night time")
    expect(picture.image_url).to be_a(String)

  end
end