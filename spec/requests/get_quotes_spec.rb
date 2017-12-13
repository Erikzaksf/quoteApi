require 'rails_helper'

describe "get all quote route", :type => :request do
  let!(:quotes) { FactoryBot.create_list(:quote, 20) }

  before { get '/quotes' }

  it 'returns all quotes' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end


# fails by adding 1 to total, will figure it out later
