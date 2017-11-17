defmodule WeatherTest do
  use ExUnit.Case
  doctest Weather

  test "return min temp" do
    assert Weather.min_temp("London") === 279.15
  end
end
