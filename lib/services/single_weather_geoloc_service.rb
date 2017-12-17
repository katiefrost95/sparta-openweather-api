require 'httparty'
require 'json'

class SingleWeatherGeoloc
  include HTTParty

  attr_accessor :single_weather_data

  base_uri 'http://samples.openweathermap.org/data/2.5/weather'

  def get_single_weather_geoloc(lat, lon)
    @single_weather_data = JSON.parse(self.class.get("?lat=#{lat}&lon=#{lon}&appid=c7f1cc423d07fe56165144b6d399149a").body)
  end

end

x = SingleWeatherGeoloc.new
puts x.get_single_weather_geoloc('35', '139')
# puts x.get_coord
