defmodule ListFilter do
  def call(list) do
    Enum.map(list, fn x -> var_to_integer(x) end)
    |> Enum.filter(fn x -> rem(x, 2) == 1 end)
    |> Enum.count()
  end

  defp var_to_integer(x) do
    try do
      String.to_integer(x)
    rescue
      _e in ArgumentError -> 0
    end
  end
end
