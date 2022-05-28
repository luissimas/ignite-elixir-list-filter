defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  describe "call/1" do
    test "return 0 when list is empty" do
      assert ListFilter.call([]) == 0
    end

    test "return correct list count" do
      assert ListFilter.call(["1", "3", "6", "43", "banana", "6", "abc"]) == 3
    end
  end
end
