class User < ApplicationRecord
  # Include default devise modules. Others available are:
  #  :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable

  belongs_to :profile, :polymorphic => true

  def handyman?
    profile_type == "Handyman"
  end
end
