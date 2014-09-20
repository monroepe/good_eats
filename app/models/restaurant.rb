class Restaurant < ActiveRecord::Base
  has_many :reviews

  validates :name, :address, :city, :state, :zip_code, presence: true
end
