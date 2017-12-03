defmodule BankTest do
  use ExUnit.Case

  test "deposit into acccount" do
    assert {:ok, 10} == Bank.deposit(0, 10)
  end

end
