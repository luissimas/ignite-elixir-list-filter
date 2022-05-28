defmodule ListFilter do
  require Integer

  @spec call([binary]) :: integer
  def call(list) do
    list
    |> Enum.filter(fn x -> Regex.match?(~r/^[[:digit:]]+$/, x) end)
    |> Enum.map(&String.to_integer/1)
    |> Enum.filter(&Integer.is_odd/1)
    |> Enum.count()
  end
end
