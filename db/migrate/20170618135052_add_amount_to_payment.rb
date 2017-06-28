class AddAmountToPayment < ActiveRecord::Migration[5.0]
  def change
    add_column :payments, :amount, :bigint
  end
end
