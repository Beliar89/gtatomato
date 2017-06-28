class AddEmailToPeliculas < ActiveRecord::Migration[5.0]
  def change
    add_column :peliculas, :email, :string
  end
end
