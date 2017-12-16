require 'httparty'
require 'json'

class SingleWeatherId
  include HTTParty

  attr_accessor :single_weather_data

  base_uri 'http://samples.openweathermap.org/data/2.5/weather'

  def get_single_weather(id)
    @single_weather_data = JSON.parse(self.class.get("?id=#{id}&appid=c7f1cc423d07fe56165144b6d399149a").body)
  end

end
x = SingleWeatherId.new
x.get_single_weather('2172797')
puts x.single_weather_data
