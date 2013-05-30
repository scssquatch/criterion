class AddAttachmentFilmPreviewToFilms < ActiveRecord::Migration
  def self.up
    change_table :films do |t|
      t.attachment :film
      t.attachment :preview
    end
  end

  def self.down
    drop_attached_file :films, :film
    drop_attached_file :films, :preview
  end
end
