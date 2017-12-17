require_relative 'services/single_weather_service'
require_relative 'services/multi_weather_service'
require_relative 'services/single_weatherID_service'
require_relative 'services/single_weather_geoloc_service'

class OpenWeather

  def single_weather_service
    SingleWeatherCity.new
  end

  def single_weatherID_service
    SingleWeatherId.new
  end

  def single_weather_geoloc_service
    SingleWeatherGeoloc.new
  end

  def multiple_weather_service
    MultipleOpenWeatherService.new
  end

end
