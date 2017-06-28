class AddPlanToPayment < ActiveRecord::Migration[5.0]
  def change
    add_column :payments, :plan, :integer
  end
end
