class User < ApplicationRecord
  VALID_GRINNELL_EMAIL_REGEX = /\A[\w+\-.]+@grinnell\.edu/i
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :email, format: { with: VALID_GRINNELL_EMAIL_REGEX }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        
end
