class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :pins
  has_many :comments
  
  has_attached_file :avatar, styles: { medium: "100x100>", :thumb => "20x20#" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
