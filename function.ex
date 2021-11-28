defmodule TestF do
  def square(x) do
    x * x
  end

  def sum(a, b), do: a + b

  def check_cond(a, b) when a + b == 11, do: IO.puts("Sum is 11")
  def check_cond(_a, _b), do: IO.puts("Something else")

  def check_pat({:ok, _content} = result), do: IO.inspect(result, label: "input is ok")
  def check_pat({:error, _content} = result), do: IO.inspect(result, label: "Input is error")
  def check_pat(result), do: IO.inspect(result, label: "Something else entirely")

  def check_list([2 | _tail] = result), do: IO.inspect(result, label: "Starts with 2")
  def check_list([1, 2, 3 | _tail] = result), do: IO.inspect(result, label: "Starts with 1, 2, 3")
  def check_list(result), do: IO.inspect(result, label: "Something else entirely")
end
