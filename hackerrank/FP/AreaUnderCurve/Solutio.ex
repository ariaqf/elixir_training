defmodule Solution do
  @interval 0.001

  def read_and_solve() do
    coeficient = IO.read(:stdio, :line)
      |> String.split()
      |> Enum.map(&String.to_integer/1)
    exponent = IO.read(:stdio, :line)
      |> String.split()
      |> Enum.map(&String.to_integer/1)
    [first, last] = IO.read(:stdio, :line)
      |> String.split()
      |> Enum.map(&String.to_integer/1)
    func = function(coeficient, exponent)
    IO.puts(Solution.integral(func, first, last))
    IO.puts(Solution.rotate_integral(func, first, last))
  end

  def function(coeficient, exponent) do
    fn x ->
      Enum.zip(coeficient, exponent)
      |> Enum.map(fn {c, e} -> c*:math.pow(x,e) end)
      |> Enum.sum
    end
  end

  def integral(func, first, last) do
    0..trunc((last-first)/@interval)
      |> Enum.map(fn x -> func.(first + x*@interval) * @interval end)
      |> Enum.sum
      |> Float.round(1)
  end

  def rotate_integral(func, first, last) do
    0..trunc((last-first)/@interval)
    |> Enum.map(fn x -> :math.pi * :math.pow( func.(first + x*@interval), 2) * @interval end)
    |> Enum.sum
    |> Float.round(1)
  end

end

Solution.read_and_solve()
