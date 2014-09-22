class Restaurant < ActiveRecord::Base
  has_many :reviews

  validates :zip_code, numericality: true
  validates :name, :address, :city, :state, :zip_code, presence: true
end
