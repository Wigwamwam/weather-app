require 'rails_helper'

RSpec.describe 'forecastapi', type: :request do
  before do

    forecast = {
      'location'=> {
        'name'=> 'London',
        'country'=> 'UK'
      },
      'forecast'=> {
        'forecastday'=>[{
          'day'=>{
            'maxtemp_c'=>20,
            'mintemp_c'=>10
          }
        }]
      }
    }

    stub_request(:get, "https://api.weatherapi.com/v1/forecast.json?key=5ef3ebd30aea49ff96a171323222409&q=Gu345Rb")
    .to_return(status: 200, body: forecast.to_json)
  end

  describe 'POST /forecasts' do
    context 'with a valid request' do
      it 'if successful it redirect to the show page' do
        post forecasts_path, params: {
          forecast: {
            postcode: 'Gu34 5Rb',
            hot: 40,
            cold: 10
          }
        }

        expect(response.status).to eq(302)
      end
    end

    context 'with a dodgy postcode' do
    end
  end

  # it 'returns a correctly formatted postcode' do
  #   forecast = Forecast.create(postcode: 'GU34 5RB')
  #   expect(forecast).to be_valid

  # end
end
