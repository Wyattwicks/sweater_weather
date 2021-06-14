require 'rails_helper'

RSpec.describe 'Everything PORO' do
  it 'creates an object that has all neccesary data' do
    data = File.read("spec/fixtures/everything.json")
    response = JSON.parse(data, symbolize_names: true) 
    everything = Everything.new(response)
    expect(everything).to be_a(Everything)
    expect(everything.id).to eq(nil)
    expect(everything.attributes.books).to be_a(Array)
  end
end