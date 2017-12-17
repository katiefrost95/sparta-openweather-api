require_relative 'services/single_weather_service'
require_relative 'services/single_weatherID_service'
require_relative 'services/single_weather_geoloc_service'
require_relative 'services/single_weather_zip_service'
require_relative 'services/multiple_weather_cities_service'
require_relative 'services/multiple_weather_ids_service'
require_relative 'services/multiple_weather_cycle_service'

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

  def single_weather_zip_service
    SingleWeatherZip.new
  end

  def multiple_weather_cities_service
    MultipleWeatherCity.new
  end

  def multiple_weather_ids_service
    MultipleWeatherCityId.new
  end

  def multiple_weather_cycle_service
    MultipleWeatherCityCycle.new
  end

end
