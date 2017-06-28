class RenameMainActorinPeliculaToActor < ActiveRecord::Migration[5.0]
  def change
  	rename_column :peliculas, :main_actor, :actor
  end
end
