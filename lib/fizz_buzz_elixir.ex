defmodule FizzBuzzElixir do

  def build(file_name) do
    file_name
    |> File.read
    |> handle_file_read
  end

  def handle_file_read({:ok, result}) do
    result
    |> String.split(",")
    |> Enum.map(&convert_and_evaluate_numbers/1)
  end

  def handle_file_read({:error, reason}), do: "Error reading the file: #{reason}"

  def convert_and_evaluate_numbers(elem) do
    number = String.to_integer(elem)
    evaluate_numbers(number)

  end

  def evaluate_numbers(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzbuzz
  def evaluate_numbers(number) when rem(number, 5) == 0, do: :buzz
  def evaluate_numbers(number) when rem(number, 3) == 0, do: :fizz
  def evaluate_numbers(number), do: number

  def build_alternative_1(file_name) do
    file = File.read(file_name)
    handle_file_read(file)
  end

  def build_alternative_2(file_name) do
    case File.read(file_name) do
      {:ok, result} -> result
      {:error, reason} -> reason
    end
  end

  def handle_file_read_alternative_1({:ok, result}) do
    list = String.split(result, ",")
    Enum.map(list, fn number -> String.to_integer(number) end)
  end

  def handle_file_read_alternative_2({:ok, result}) do
    result
    |> String.split(",")
    |> Enum.map(&String.to_integer/1)
  end

  def handle_file_read_alternative_3({:ok, result}) do
    list = String.split(result, ",")
    Enum.map(list, &String.to_integer/1)
  end

  def convert_and_evaluate_numbers_alternative_1(elem) do
    number = String.to_integer(elem)
    if rem(number,3) === 0 do
      :fizz
    else if rem(number, 5) === 0 do
      :buzz
    end
    end
  end
end
