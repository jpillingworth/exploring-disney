class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.blob :image
      t.string :name
      t.integer :age
      t.integer :weight
      t.strig :history
      t.string :movie

      t.timestamps
    end
  end
end
