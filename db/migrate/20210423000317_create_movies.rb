class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.blob :image
      t.string :title
      t.date :date
      t.integer :rating
      t.text :characters
      t.string :genre

      t.timestamps
    end
  end
end
