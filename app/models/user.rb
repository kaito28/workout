class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :post_gyms, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

   attachment :profile_image

end
