class AddSubscriptionsToPayment < ActiveRecord::Migration[5.0]
  def change
    add_column :payments, :subscription, :boolean
  end
end
