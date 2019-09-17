class Client < ApplicationRecord
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
 
   has_one_attached :avatar
  has_many :reservations
  has_many :commands
  has_many :restaurants, through: :reservations
end

