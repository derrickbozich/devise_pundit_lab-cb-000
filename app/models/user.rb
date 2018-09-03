class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable,  :validatable, :trackable
        #  :trackable,
  has_many :notes
  has_many :viewers
  has_many :readable, through: :viewers, source: :note

  enum :role => [:admin, :moderator, :normal]
end
