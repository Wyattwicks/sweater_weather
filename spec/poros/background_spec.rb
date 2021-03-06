require 'rails_helper'

RSpec.describe "background PORO" do
  it "returns a background object" do
    data = File.read("spec/fixtures/picture.json")
    response = JSON.parse(data, symbolize_names: true) 
    picture = Background.new(response)

    expect(picture).to be_a(Background)
    expect(picture.id).to eq(nil)
    expect(picture.credit).to be_a(Hash)
    expect(picture.description).to eq("city skyline during night time")
    expect(picture.image_url).to be_a(String)
    expect(picture.credit[:source]).to be_a(String)
    expect(picture.credit[:author]).to be_a(String)
    expect(picture.credit[:author_url]).to be_a(String)

  end
end