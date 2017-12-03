defmodule BankTest do
  use ExUnit.Case

  test "deposit into acccount" do
    assert {:ok, 10} == Bank.deposit(0, 10)
    assert {:ok, 15} == Bank.deposit(10, 5)
  end

  test "cannot deposit a negative amount" do
    assert {:error, "Cannot deposit a negative amount."} == Bank.deposit(10, -5)
  end

end
