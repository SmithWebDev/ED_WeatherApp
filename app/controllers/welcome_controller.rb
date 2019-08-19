class WelcomeController < ApplicationController
  def test
    response = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?zip=28204&units=imperial&appid=#{ENV['openweather_api_key']}")
    @location = response['name']
    @temp = response['main']['temp']
    @weather_icon = response['weather'][0]['icon']
    @weather_words = response['weather'][0]['description']
    @cloudiness = response['clouds']['all']
    @windiness = response['wind']['speed']
  end

  def index
  end
end
