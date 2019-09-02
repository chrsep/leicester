defmodule LeicesterTest do
  use ExUnit.Case
  doctest Leicester

  test "greets the world" do
    assert Leicester.hello() == :world
  end
end
