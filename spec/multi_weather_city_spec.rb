require 'spec_helper'

describe OpenWeather do

  context 'requesting information on a multiple weather location of rectangular box coordinates' do

    before(:all) do
      @openweather = OpenWeather.new.multiple_weather_cities_service
      @openweather.get_multiple_cities_box('12','32','15','37','10')
    end

    it 'should return a string for cod' do
      expect(@openweather.get_cod).to be_kind_of(String)
    end

    it 'should return a float for calctime' do
      expect(@openweather.get_calctime).to be_kind_of(Float)
    end

    it 'should return integer for cnt' do
      expect(@openweather.get_cnt).to be_kind_of(Integer)
    end

    it 'should return an array for list' do
      expect(@openweather.get_list).to be_kind_of(Array)
    end

    it 'should return an 7 number integer for id' do
      @openweather.get_list_id.each do |id|
        expect(id).to be_kind_of(Integer)
        expect(id.to_s.length).to eq 7
      end
    end

    it 'should return a string for name' do
      @openweather.get_list_name.each do |name|
        expect(name).to be_kind_of(String)
      end
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

    it 'should return float for main pressure' do
      @openweather.get_main_pressure.each do |c|
        expect(c).to be_kind_of(Float).or be_kind_of(Integer)
      end
    end

    it 'should return float for main sea level' do
      @openweather.get_main_sealevel.each do |c|
        expect(c).to be_kind_of(Float).or be_nil
      end
    end

    it 'should return float for main grnd level' do
      @openweather.get_main_grndlevel.each do |c|
        expect(c).to be_kind_of(Float).or be_nil
      end
    end

    it 'should return float for main humidity' do
      @openweather.get_main_humidity.each do |c|
        expect(c).to be_kind_of(Integer).or be_nil
      end
    end

    it 'should return an 10 number integer for dt' do
      @openweather.get_list_dt.each do |dt|
        expect(dt).to be_kind_of(Integer)
        expect(dt.to_s.length).to eq 10
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

    it 'should return hash or nil for rain' do
      @openweather.get_list_rain.each do |c|
        expect(c).to be_kind_of(Hash).or be_nil
      end
    end

    it 'should return hash for clouds' do
      @openweather.get_list_clouds.each do |c|
        expect(c).to be_kind_of(Hash)
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

  end
end
