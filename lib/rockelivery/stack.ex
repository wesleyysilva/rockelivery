defmodule Rockelivery.Stack do
  use GenServer

  def start_link(initial_stack) when is_list(initial_stack) do
    # you may want to register your server with `name: __MODULE__`
    # as a third argument to `start_link`
    GenServer.start_link(__MODULE__, initial_stack)
  end

  def push(pid, element) do
    GenServer.call(pid, {:push, element})
  end

  def pop(pid) do
    GenServer.call(pid, :pop)
  end

  @impl true
  def init(stack) do
    {:ok, stack}
  end

  @impl true
  # sync
  def handle_call({:push, element}, _from, stack) do
    new_stack = [element | stack]

    {:reply, new_stack, new_stack}
  end

  def handle_call(:pop, _from, []) do
    {:reply, nil, []}
  end

  @impl true
  def handle_call(:pop, _from, [head | tail]) do
    {:reply, head, tail}
  end
end
