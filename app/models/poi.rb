class Poi < ActiveRecord::Base

  mount_uploader :logo, ImageUploader

  acts_as_followable
  acts_as_likeable

end
