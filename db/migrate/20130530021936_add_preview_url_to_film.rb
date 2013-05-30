class AddPreviewUrlToFilm < ActiveRecord::Migration
  def change
    add_column :films, :preview_url, :string
  end
end
