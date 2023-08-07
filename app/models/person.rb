class Person < ApplicationRecord
  has_many :photos, dependent: :destroy
  has_many :comments, dependent: :destroy

  mount_uploader :avatar, AvatarUploader

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  enum role: [:usuario, :admin]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
