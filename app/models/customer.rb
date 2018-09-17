class Customer < ApplicationRecord
  has_one :user, :as => :profile
  accepts_nested_attributes_for :user
  def user
    super || build_user(profile: self)
  end
end
