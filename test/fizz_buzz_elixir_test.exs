defmodule FizzBuzzElixirTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      expectedResponse = {:ok, [1, 2, :fizz, 4, :buzz, :buzz, :fizzbuzz, :buzz]}
      assert FizzBuzzElixir.build("numbers.txt") == expectedResponse
    end

    test "when a invalid file is provided, returns an error" do
      expectedResponse = {:error, "Error reading the file: enoent"}
      assert FizzBuzzElixir.build("wrong.txt") == expectedResponse
    end
  end
end
