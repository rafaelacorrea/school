defmodule SchoolTest do
  use ExUnit.Case
  alias AverageCalculator

  describe "start/0" do
    test "The first student of the result has the best average." do
      {result, best} = AverageCalculator.start()
      assert List.first(best) == List.first(result)
    end

    test "The last student of the result has the worst average." do
      {result, best} = AverageCalculator.start()
      refute List.first(best) == List.last(result)
    end
  end
end
