defmodule Bank do

  def deposit(account, deposit_amount) when deposit_amount >= 0 do
    {:ok, account + deposit_amount}
  end

  def deposit(_account, _invalid_amount) do
    {:error, "Cannot deposit a negative amount."}
  end

end
