defmodule FizzBuzzElixirTest do
  use ExUnit.Case
  doctest FizzBuzzElixir

  test "greets the world" do
    assert FizzBuzzElixir.hello() == :world
  end
end
