class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # has many stamps through tests
  # has many stamps through code_reviews
  has_many :tecnologies, through: :technologies_users
  has_one_attached :avatar
end
