class AddChannelToPayment < ActiveRecord::Migration[5.0]
  def change
    add_column :payments, :channel, :string
  end
end
