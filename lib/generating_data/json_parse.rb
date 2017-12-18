require 'json'

class ParseJson

  def get_random_country_name
    @json_file = JSON.parse(File.read('iso_country_data.json'))
    @json_file[rand(@json_file.length)]['CapitalName']
  end

end
x = ParseJson.new
puts x.get_random_country_name
