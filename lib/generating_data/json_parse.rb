require 'json'

class ParseJson

  def get_random_country_name
    @json_file = JSON.parse(File.read('iso_country_data.json'))
    @json_file[rand(@json_file.length)]['CapitalName']
  end

  def get_random_lon
    @json_file = JSON.parse(File.read('iso_country_data.json'))
    @json_file[rand(@json_file.length)]['CapitalLongitude']
  end

  def get_random_lat
    @json_file = JSON.parse(File.read('iso_country_data.json'))
    @json_file[rand(@json_file.length)]['CapitalLatitude']
  end


end
# x = ParseJson.new
# puts x.get_random_lon_lat
