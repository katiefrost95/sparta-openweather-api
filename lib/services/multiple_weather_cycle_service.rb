require 'httparty'
require 'json'

class MultipleWeatherCityCycle
  include HTTParty

  base_uri 'http://api.openweathermap.org/data/2.5/find'

  def get_multiple_cities_cycle(lat,lon,cnt)
    @multi_weather_data = JSON.parse(self.class.get("?lat=#{lat}&lon=#{lon}&cnt=#{cnt}&appid=c7f1cc423d07fe56165144b6d399149a").body)
  end

  def get_message
    @multi_weather_data["message"]
  end

  def get_cod
    @multi_weather_data["cod"]
  end

  def get_count
    @multi_weather_data["count"]
  end

  def get_list
    @multi_weather_data["list"]
  end

  def get_list_id
    list_ids = []
    get_list.each{|id| list_ids << id['id'] }
    list_ids
  end

  def get_list_name
    list_names = []
    get_list.each{|name| list_names << name['name'] }
    list_names
  end

  def get_list_coord
    list_coord = []
    get_list.each{|coord| list_coord << coord['coord']}
    list_coord
  end

  def get_coord_lat
    coord_lat = []
    get_list_coord.each{|lat| coord_lat << lat['lat']}
    coord_lat
  end

  def get_coord_lon
    coord_lon = []
    get_list_coord.each{|lon| coord_lon << lon['lon']}
    coord_lon
  end

  def get_list_main
    list_main = []
    get_list.each{|main| list_main << main['main']}
    list_main
  end

  def get_main_temp
    main_temp = []
    get_list_main.each{|temp| main_temp << temp['temp']}
    main_temp
  end

  def get_main_pressure
    main_pressure = []
    get_list_main.each{|pressure| main_pressure << pressure['pressure']}
    main_pressure
  end

  def get_main_humidity
    main_humidity = []
    get_list_main.each{|humidity| main_humidity << humidity['humidity']}
    main_humidity
  end

  def get_main_tempmin
    main_temp_min = []
    get_list_main.each{|tempmin| main_temp_min << tempmin['temp_min']}
    main_temp_min
  end

  def get_main_tempmax
    main_temp_max = []
    get_list_main.each{|tempmax| main_temp_max << tempmax['temp_max']}
    main_temp_max
  end

  def get_list_dt
    list_dt = []
    get_list.each{|dt| list_dt << dt['dt'] }
    list_dt
  end

  def get_list_wind
    list_wind = []
    get_list.each{|wind| list_wind << wind['wind'] }
    list_wind
  end

  def get_wind_speed
    wind_speed = []
    get_list_wind.each{|speed| wind_speed << speed['speed'] }
    wind_speed
  end

  def get_wind_deg
    wind_deg = []
    get_list_wind.each{|deg| wind_deg << deg['deg'] }
    wind_deg
  end

  def get_list_sys
    list_sys = []
    get_list.each{|sys| list_sys << sys['sys']}
    list_sys
  end

  def get_sys_country
    sys_country = []
    get_list_sys.each{|x| sys_country << x['country']}
    sys_country
  end

  def get_list_rain
    list_rain = []
    get_list.each{|rain| list_rain << rain['rain'] }
    list_rain
  end

  def get_list_snow
    list_snow = []
    get_list.each{|s| list_snow << s['snow'] }
    list_snow
  end

  def get_list_clouds
    list_clouds = []
    get_list.each{|clouds| list_clouds << clouds['clouds'] }
    list_clouds
  end

  def get_clouds_all
    clouds_all = []
    get_list_clouds.each{|all| clouds_all << all['all'] }
    clouds_all
  end

  def get_list_weather
    list_weather = []
    get_list.each{|weather| list_weather << weather['weather']}
    list_weather
  end

  def get_weather_id
    weather_id = []
    get_list_weather.each{|id| weather_id << id[0]['id']}
    weather_id
  end

  def get_weather_main
    weather_main = []
    get_list_weather.each{|main| weather_main << main[0]['main']}
    weather_main
  end

  def get_weather_description
    weather_description = []
    get_list_weather.each{|d| weather_description << d[0]['description']}
    weather_description
  end

  def get_weather_icon
    weather_icon = []
    get_list_weather.each{|i| weather_icon << i[0]['icon']}
    weather_icon
  end


end
x = MultipleWeatherCityCycle.new
x.get_multiple_cities_cycle('55.5', '37.5', '10')
