class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         :confirmable

  attr_accessor :email, :password, :password_confirmation, :remember_me



  has_many :stories
  has_one :profile
  has_many :permissions

end
