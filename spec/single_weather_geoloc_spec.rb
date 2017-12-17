require 'spec_helper'

describe OpenWeather do

  context 'requesting information on a single weather location by geographic location' do

    before(:all) do
      @openweather = OpenWeather.new.single_weather_geoloc_service
      @openweather.get_single_weather_geoloc('35', '139')
    end

    it 'should coord to return a hash for coord' do
      expect(@openweather.get_coord).to be_kind_of(Hash)
    end

  end
end
