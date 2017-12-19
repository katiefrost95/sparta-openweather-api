require 'yaml'

class YamlData

  def random_city_by_id
    @random_id = YAML.load_file('city_id.yml')
    @random_id[rand(@random_id.length)]
  end

end

x = YamlData.new
puts x.random_city_by_id
