require 'yaml'

class YamlCityId

  def initialize
    @city_id = YAML.load_file('city_id.yml')
  end

  def yaml_city_id
    @city_id['city_id.yml'] % {random_number: rand(@city_id)}
  end

  # my_yml['event_create_form']['event_name'] % {random_number: rand(1..100)}

end

x = YamlCityId.new
# puts x.yaml_city_id
