require 'spec_helper'

describe OpenWeather do

  context 'requesting information on a single weather location by geographic coordinates' do

    before(:all) do
      @openweather = OpenWeather.new.single_weather_geoloc_service
      @openweather.get_single_weather_geoloc('35', '139')
    end

    it 'should coord to return a hash for coord' do
      expect(@openweather.get_coord).to be_kind_of(Hash)
    end

    it 'should return a float for coord longitude' do
      expect(@openweather.get_coord_long).to be_kind_of(Float)
    end

    it 'should return a float for coord latitude' do
      expect(@openweather.get_coord_lat).to be_kind_of(Float)
    end

    it 'should have longitude between -180 and 180' do
      expect(@openweather.get_coord_long).to be_between(-180,180)
    end

    it 'should have latitude between -90 and 90' do
      expect(@openweather.get_coord_lat).to be_between(-90,90)
    end

    it 'should return an array for weather' do
      expect(@openweather.get_weather).to be_kind_of(Array)
    end

    it 'should return an integer for weather ID' do
      expect(@openweather.get_weather_id).to be_kind_of(Integer)
    end

    it 'should return a string for weather main' do
      expect(@openweather.get_weather_main).to be_kind_of(String)
    end

    it 'should return a string for weather desciption' do
      expect(@openweather.get_weather_description).to be_kind_of(String)
    end

    it 'should return a string for weather icon' do
      expect(@openweather.get_weather_icon).to be_kind_of(String)
    end

    it 'should return a string for base' do
      expect(@openweather.get_base).to be_kind_of(String)
    end

    it 'should return a hash for main' do
      expect(@openweather.get_main).to be_kind_of(Hash)
    end

    it 'should return an integer for main temp' do
      expect(@openweather.get_main_temp).to be_kind_of(Float)
    end

    it 'should return an integer for main pressure' do
      expect(@openweather.get_main_pressure).to be_kind_of(Float).or be_kind_of(Integer)
    end

    it 'should return an integer for humidity' do
      expect(@openweather.get_main_humidity).to be_kind_of(Integer)
    end

    it 'should return an float for temp min' do
      expect(@openweather.get_main_mintemp).to be_kind_of(Float)
    end

    it 'should return an float for temp max' do
      expect(@openweather.get_main_maxtemp).to be_kind_of(Float)
    end

    it 'should return an float for sea level' do
      expect(@openweather.get_main_sealevel).to be_kind_of(Float)
    end

    it 'should return an float for grnd level' do
      expect(@openweather.get_main_grndlevel).to be_kind_of(Float)
    end

    it 'should return a hash for wind' do
      expect(@openweather.get_wind).to be_kind_of(Hash)
    end

    it 'should return a float for wind speed' do
      expect(@openweather.get_wind_speed).to be_kind_of(Float)
    end

    it 'should return an integer for wind degrees' do
      expect(@openweather.get_wind_deg).to be_kind_of(Integer)
    end

    it 'should return hash for clouds' do
      expect(@openweather.get_clouds).to be_kind_of(Hash)
    end

    it 'should return integer for clouds all' do
      expect(@openweather.get_clouds_all).to be_kind_of(Integer)
    end

    it 'should return Integer for dt' do
      expect(@openweather.get_dt).to be_kind_of(Integer)
    end

    it 'should return a hash for sys' do
      expect(@openweather.get_sys).to be_kind_of(Hash)
    end

    it 'should return float for message' do
      expect(@openweather.get_sys_message).to be_kind_of(Float)
    end

    it 'should return a string for country code' do
      expect(@openweather.get_sys_country).to be_kind_of(String)
    end

    it 'should return a 2 letter string for country code' do
      expect(@openweather.get_sys_country.length).to eq 2
    end

    it 'should return an integer for sys sunrise' do
      expect(@openweather.get_sys_sunrise).to be_kind_of(Integer)
    end

    it 'should return 10 numbers for sunrise' do
      expect(@openweather.get_sys_sunrise.to_s.length).to eq 10
    end

    it 'should return an integer for sys sunset' do
      expect(@openweather.get_sys_sunset).to be_kind_of(Integer)
    end

    it 'should return 10 numbers for sunset' do
      expect(@openweather.get_sys_sunset.to_s.length).to eq 10
    end

    it 'should return integer for ID' do
      expect(@openweather.get_id).to be_kind_of(Integer)
    end

    it 'should return string for name' do
      expect(@openweather.get_name).to be_kind_of(String)
    end

    it 'should return an integer for cod' do
      expect(@openweather.get_cod).to be_kind_of(Integer)
    end

  end
end
