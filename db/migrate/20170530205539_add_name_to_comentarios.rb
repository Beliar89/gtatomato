class AddNameToComentarios < ActiveRecord::Migration[5.0]
  def change
    add_column :comentarios, :name, :string
  end
end
