defmodule Chop do
  def check(guessed_number, n, low.._high) when (guessed_number - n > 0), do: guess(n, low..(guessed_number - 1))
  def check(guessed_number, n, _low..high) when (guessed_number - n < 0), do: guess(n, (guessed_number + 1)..high)
  def check(guessed_number, n, _low.._high) when (guessed_number - n == 0), do: IO.puts(n)

  def guess(n, range) do
    guessed_number = Enum.random(range)
    IO.puts("Is it #{guessed_number}")
    check(guessed_number, n, range)
  end

  def test_guess(0), do: IO.puts("Over")
  def test_guess(n) do
    IO.puts("Guess: #{Enum.random(0..1000)}")
    test_guess(n-1)
  end
end
