class RemoveImageFromMovies < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :image, :blob
  end
end
