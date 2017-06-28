class AddCountryToPeliculas < ActiveRecord::Migration[5.0]
  def change
    add_column :peliculas, :country, :string
  end
end
