require 'rails_helper'

describe "Everything Facade", :vcr do
  it "returns a final object based on search params" do
    location = "denver, co"
    quantity = 5
    response =EverythingFacade.get_everything(location, 5)
    binding.pry
  end
end