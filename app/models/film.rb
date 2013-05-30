class Film < ActiveRecord::Base
  has_attached_file :film
  has_attached_file :preview
end
