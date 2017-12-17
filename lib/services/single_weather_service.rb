require 'httparty'
require 'json'

class SingleWeatherCity
  include HTTParty

  attr_accessor :single_weather_data

  base_uri 'http://samples.openweathermap.org/data/2.5/weather'

  def get_single_weather(city, country)
    @single_weather_data = JSON.parse(self.class.get("?q=#{city},#{country}&appid=c7f1cc423d07fe56165144b6d399149a").body)
  end

  def get_coord
    @single_weather_data["coord"]
  end

  def get_coord_long
    get_coord["lon"]
  end

  def get_coord_lat
    get_coord["lat"]
  end

  def get_weather
    @single_weather_data["weather"]
  end

  def get_weather_id
    get_weather[0]["id"]
  end

  def get_weather_main
    get_weather[0]["main"]
  end

  def get_weather_description
    get_weather[0]["description"]
  end

  def get_weather_icon
    get_weather[0]["icon"]
  end

  def get_base
    @single_weather_data["base"]
  end

  def get_main
    @single_weather_data["main"]
  end

  def get_main_temp
    get_main["temp"]
  end

  def get_main_pressure
    get_main["pressure"]
  end

  def get_main_humidity
    get_main["humidity"]
  end

  def get_main_mintemp
    get_main["temp_min"]
  end

  def get_main_maxtemp
    get_main["temp_max"]
  end

  def get_visibility
    @single_weather_data["base"]
  end

  def get_wind
    @single_weather_data["wind"]
  end

  def get_wind_speed
    get_wind["speed"]
  end

  def get_wind_deg
    get_wind["deg"]
  end

  def get_clouds
    @single_weather_data["clouds"]
  end

  def get_clouds_all
    get_clouds["all"]
  end

  def get_dt
    @single_weather_data["dt"]
  end

  def get_sys
    @single_weather_data["sys"]
  end

  def get_sys_type
    get_sys["type"]
  end

  def get_sys_ID
    get_sys["id"]
  end

  def get_sys_message
    get_sys["message"]
  end

  def get_sys_country
    get_sys["country"]
  end

  def get_sys_sunrise
    get_sys["sunrise"]
  end

  def get_sys_sunset
    get_sys["sunset"]
  end

  def get_id
    @single_weather_data["id"]
  end

  def get_name
    @single_weather_data["name"]
  end

  def get_cod
    @single_weather_data["cod"]
  end
end

x = SingleWeatherCity.new
# x.get_single_weather('London', 'UK')
# puts x.single_weather_data
