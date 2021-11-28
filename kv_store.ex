defmodule CacheStore do
  use Agent

  def start_link() do
    Agent.start_link(fn -> %{} end, name: __MODULE__)
  end

  def get(key) do
    Agent.get(__MODULE__, fn map -> Map.get(map, key) end)
  end

  def put(key, value) do
    Agent.update(__MODULE__, fn map -> Map.put(map, key, value) end)
  end

  def get_name(), do: __MODULE__
  def get_all() do
    Agent.get(__MODULE__, fn map -> map end)
  end
end
