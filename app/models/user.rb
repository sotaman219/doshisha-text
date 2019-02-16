class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :confirmable

  validates :email, presence: true, format: { with: /\A([a-zA-Z0-9._]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
  validates :family_name, presence: true
  validates :first_name, presence: true
  validates :student_id, presence: true

  belongs_to :university
  belongs_to :faculty

  has_many :lessons
  has_many :text_book
end
