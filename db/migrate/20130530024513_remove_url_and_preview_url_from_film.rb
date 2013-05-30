class RemoveUrlAndPreviewUrlFromFilm < ActiveRecord::Migration
  def change
    remove_column :films, :preview_url, :string
    remove_column :films, :url, :string
  end
end
