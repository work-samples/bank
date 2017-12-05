defmodule Bank do

  @moduledoc """
  A module to capture all behaviour of a bank, presently
  only supports depositing funds into your account; but more
  features arriving daily :-)
  """

  @doc """
  Deposit money into your bank account, and return the current
  balance in your account.

  ## Examples

      iex> Bank.deposit(0, 10)
      {:ok, 10}

      iex> Bank.deposit(10, 5)
      {:ok, 15}

      iex> Bank.deposit(10, -5)
      {:error, "Cannot deposit a negative amount."}

  """
  def deposit(account, deposit_amount) when deposit_amount >= 0 do
    {:ok, account + deposit_amount}
  end

  def deposit(_account, _invalid_amount) do
    {:error, "Cannot deposit a negative amount."}
  end

end
