require 'rails_helper'

describe 'Cinema tests', type: :request do
  context 'Movie validation test' do
    
    it "Get movies" do
      get "/api/v1/cinema/movies?day=Friday"
      expect(response.status).to eq 200
      #expect(JSON.parse(response.body)).to
    end

    it "Create movies" do
      params = {
        title: "Sherlock",
        description: "Adventure",
        url: 'shorturl.at/deyF8',
        days: ["Friday","Saturday","Sunday"]
      }
      post "/api/v1/cinema/movie", params: params

      expect(response.status).to eq 201
      expect(response.body).to include "Movie Sherlock created"
    end
  end
end
  
