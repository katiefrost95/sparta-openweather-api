# sparta-openweather-api

##Brief

To create a service object model that will test api's from the openweathermap website from single locations to multiple locations. Separated the tests into two classes: a single class and a multiple class which both drew from the superclass.

The link to the openweather website is:
https://openweathermap.org/api

I also made the testing dynamic and randomly sift through data from yaml files and Json to improve the quality of the tests.

### To run the tests

clone the repo into your terminal by running the command:

`git clone git@github.com:katiefrost95/sparta-openweather-api.git`

Initialize RSpec in your terminal by running:

`rspec --init`

`require rspec`

`require json`

`require yaml`

To run the tests from your terminal you need to cd into the directory and run the rspec command to get the tests running.

Documentation for json and yaml:
http://ruby-doc.org/stdlib-2.0.0/libdoc/json/rdoc/JSON.html
http://ruby-doc.org/stdlib-2.0.0/libdoc/yaml/rdoc/YAML.html

### Creating new tests
The tests files are in the spec folder and the methods which call data are in the services folder.

To create a new test add a new spec file and require 'spec_helper' at the top of the page. When creating a new service file to write the methods for the test, create a new instance of the class OpenWeather in the weather.rb file, and add a new service file to the services folder.

When writing the tests write them in the following format:

      it 'should coord to return a hash' do
        expect(@openweather.get_coord).to be_kind_of(Hash)
      end
