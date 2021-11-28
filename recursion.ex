defmodule Recursion do
  def len([]), do: 0
  def len([_head | tail]), do: 1 + len(tail)

  def square([]), do: []
  def square([head | tail]), do: [head * head | square(tail)]

  def map([], _func), do: []
  def map([head | tail], func), do: [func.(head) | map(tail, func)]

  def sum(list), do: _sum(list, 0)
  def _sum([head | tail], total), do: _sum(tail, total + head)
  def _sum([], total), do: total

  def reduce([head | tail], acc, func), do: reduce(tail, func.(head, acc), func)
  def reduce([], acc, _func), do: acc

  def mapsum([head | tail], func, total \\ 0), do: mapsum(tail, func, total + func.(head))
  def mapsum([], _func, total), do: total


  def max([head | tail]), do: _max(tail, head)
  def max([]), do: 0
  def _max([head | tail], current_max) do
    new_max = if head > current_max, do: head, else: current_max
    _max(tail, new_max)
  end
  def _max([], current_max), do: current_max

  def caesar([head | tail], n), do: [_get_caesar_char(head, n) | caesar(tail, n)]
  def caesar([], _n), do: []
  def _get_caesar_char(val, n) do
    if val + n > 122, do: (val + n) - 122 + 65, else: val + n
  end

  def test_me(x), do: x*x
  
  def inefficient([head | tail]), do: head + inefficient(tail)
  def inefficient([]), do: 0
  
  def efficient_tail_recursion(list), do: do_tail_recursion(list, 0)
  def do_tail_recursion([head | tail], acc), do: do_tail_recursion(tail, acc + sum)
  def do_tail_recursion([], acc), do: acc
end
