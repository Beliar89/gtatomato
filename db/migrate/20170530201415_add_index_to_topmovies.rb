class AddIndexToTopmovies < ActiveRecord::Migration[5.0]
  def change
    add_column :topmovies, :user_id, :integer
    add_index :topmovies, :user_id
  end
end
