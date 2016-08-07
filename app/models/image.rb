class Image < ActiveRecord::Base
  belongs_to :user
  
  validate :image_size
  
  mount_uploader :picture, PictureUploader
  
  private
  
  def image_size
    if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5 MB")
    end
  end
  
  
end
