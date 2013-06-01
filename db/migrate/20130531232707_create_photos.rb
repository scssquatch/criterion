class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.attachment :photo

      t.timestamps
    end
  end

  def down
    drop_attached_file :photos, :photo
  end
end
