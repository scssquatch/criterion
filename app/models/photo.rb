class Photo < ActiveRecord::Base
  has_attached_file :photo,
    bucket: "asb-criterion-template-videos"
  validates_attachment :photo,
    presence: true
end
