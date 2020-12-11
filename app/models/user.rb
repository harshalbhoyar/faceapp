class User < ApplicationRecord
	mount_uploader :image, ImageUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         :omniauthable, omniauth_providers: %i[facebook]
   validate :picture_size

   private
   
   def picture_size 
   	errors.add(:image, 'should be less than 1MB') if image.size > 1.megabytes
   end
end
