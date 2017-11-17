defmodule Weather do
  def min_temp(city) do
    url =  "http://samples.openweathermap.org/data/2.5/weather?q=London,uk&appid=b1b15e88fa797225412429c1c50c122a1"
    HTTPoison.start
    %{body: body} = HTTPoison.get!(url)
    Poison.decode!(body)["main"]["temp_min"]
  end
end
