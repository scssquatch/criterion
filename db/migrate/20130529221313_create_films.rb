class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :title
      t.string :url
      t.boolean :active

      t.timestamps
    end
  end
end
