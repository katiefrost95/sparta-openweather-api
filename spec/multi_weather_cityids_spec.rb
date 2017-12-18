require 'spec_helper'

describe OpenWeather do

  context 'requesting information on a multiple weather location by IDs' do

    before(:all) do
      @openweather = OpenWeather.new.multiple_weather_ids_service
      @openweather.get_multiple_cities_id('524901','703448','2643743')
    end

    it 'should return integer for cnt' do
      expect(@openweather.get_cnt).to be_kind_of(Integer)
    end

    it 'should return an array for list' do
      expect(@openweather.get_list).to be_kind_of(Array)
    end


    it 'should return hash for coord' do
      @openweather.get_list_coord.each do |c|
        expect(c).to be_kind_of(Hash)
      end
    end

    it 'should return a float for coord longitude' do
      @openweather.get_coord_lon.each do |c|
        expect(c).to be_kind_of(Float).or be_kind_of(Integer)
      end
    end

    it 'should return a float for coord latitude' do
      @openweather.get_coord_lat.each do |c|
        expect(c).to be_kind_of(Float).or be_kind_of(Integer)
      end
    end

    it 'should return a hash for sys' do
      @openweather.get_list_sys.each do |x|
        expect(x).to be_kind_of(Hash)
      end
    end

    it 'should return an integer for sys type' do
      @openweather.get_sys_type.each do |x|
        expect(x).to be_kind_of(Integer)
      end
    end

    it 'should return an integer for sys id' do
      @openweather.get_sys_id.each do |x|
        expect(x).to be_kind_of(Integer)
      end
    end

    it 'should return an integer for sys message' do
      @openweather.get_sys_message.each do |x|
        expect(x).to be_kind_of(Integer).or be_kind_of(Float)
      end
    end

    it 'should return a String for sys country' do
      @openweather.get_sys_country.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return an integer for sys sunrise' do
      @openweather.get_sys_sunrise.each do |x|
        expect(x).to be_kind_of(Integer)
      end
    end

    it 'should return an integer for sys sunset' do
      @openweather.get_sys_sunset.each do |x|
        expect(x).to be_kind_of(Integer)
      end
    end

    it 'should return an array for weather' do
      @openweather.get_list_weather.each do |c|
        expect(c).to be_kind_of(Array)
      end
    end

    it 'should return an integer for weather ID' do
      @openweather.get_weather_id.each do |id|
        expect(id).to be_kind_of(Integer)
      end
    end

    it 'should return an string for weather main' do
      @openweather.get_weather_main.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return an string for weather description' do
      @openweather.get_weather_description.each do |x|
        expect(x).to be_kind_of(String)
      end
    end

    it 'should return an string for weather icon' do
      @openweather.get_weather_icon.each do |x|
        expect(x).to be_kind_of(String)
      end
    end


    it 'should return hash for main' do
      @openweather.get_list_main.each do |c|
        expect(c).to be_kind_of(Hash)
      end
    end

    it 'should return float for main temp' do
      @openweather.get_main_temp.each do |c|
        expect(c).to be_kind_of(Float).or be_kind_of(Integer)
      end
    end

    it 'should return float for main pressure' do
      @openweather.get_main_pressure.each do |c|
        expect(c).to be_kind_of(Float).or be_kind_of(Integer)
      end
    end

    it 'should return float for main humidity' do
      @openweather.get_main_humidity.each do |c|
        expect(c).to be_kind_of(Integer).or be_nil
      end
    end

    it 'should return float for main tempmin' do
      @openweather.get_main_tempmin.each do |c|
        expect(c).to be_kind_of(Float).or be_kind_of(Integer)
      end
    end

    it 'should return float for main tempmax' do
      @openweather.get_main_tempmax.each do |c|
        expect(c).to be_kind_of(Float).or be_kind_of(Integer)
      end
    end

    it 'should return an integer for visibility' do
      @openweather.get_list_visibility.each do |c|
        expect(c).to be_kind_of(Integer)
      end
    end

    it 'should return hash for wind' do
      @openweather.get_list_wind.each do |c|
        expect(c).to be_kind_of(Hash)
      end
    end

    it 'should return float or integer for wind speed' do
      @openweather.get_wind_speed.each do |c|
        expect(c).to be_kind_of(Float).or be_kind_of(Integer)
      end
    end

    it 'should return float or integer for wind degrees' do
      @openweather.get_wind_deg.each do |c|
        expect(c).to be_kind_of(Float).or be_kind_of(Integer).or be_nil
      end
    end

    it 'should return hash for clouds' do
      @openweather.get_list_clouds.each do |c|
        expect(c).to be_kind_of(Hash)
      end
    end

    it 'should return an 10 number integer for dt' do
      @openweather.get_list_dt.each do |dt|
        expect(dt).to be_kind_of(Integer)
        expect(dt.to_s.length).to eq 10
      end
    end

    it 'should return an 7 number integer for id' do
      @openweather.get_list_id.each do |id|
        expect(id).to be_kind_of(Integer)
        expect(id.to_s.length).to be_between(6,7).inclusive
      end
    end

    it 'should return a string for name' do
      @openweather.get_list_name.each do |name|
        expect(name).to be_kind_of(String)
      end
    end

  end
end
