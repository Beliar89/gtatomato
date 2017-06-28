class RenameEmailinPeliculaToEmailContact < ActiveRecord::Migration[5.0]
  def change
  	rename_column  :peliculas, :email, :email_contact
  end
end
