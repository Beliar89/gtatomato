class AddRevenueAmountToPeliculas < ActiveRecord::Migration[5.0]
  def change
    add_column :peliculas, :revenue_amount, :integer
  end
end
