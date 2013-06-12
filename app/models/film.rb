class Film < ActiveRecord::Base
  has_attached_file :film,
    bucket: "asb-criterion-template-videos"
  has_attached_file :preview,
    bucket: "asb-criterion-template-videos"

  validates :title, presence: true
  validates_attachment :film,
    presence: true
  validates_attachment :preview,
    presence: true
end
