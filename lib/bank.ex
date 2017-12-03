defmodule Bank do

  def deposit(account, deposit_amount) do
    {:ok, account + deposit_amount}
  end

end
