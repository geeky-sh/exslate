defmodule Fizzbuzz do
  def print_up(0, 0, _), do: "FizzBuzz"
  def print_up(0, _, _), do: "Fizz"
  def print_up(_, 0, _), do: "Buzz"
  def print_up(_, _, c): do: c

  def compute(n) do
    print_up(rem(n, 3), rem(n, 5), n)
  end

  def calc() do
  end
end
