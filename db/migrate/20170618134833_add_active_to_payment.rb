class AddActiveToPayment < ActiveRecord::Migration[5.0]
  def change
    add_column :payments, :active, :Boolean
  end
end
