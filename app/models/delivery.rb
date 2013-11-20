class Delivery < ActiveRecord::Base
  has_many :documents
  validates :name, presence: true
  validates :user_email, presence: true
  validates :recipient_email, presence: true
  accepts_nested_attributes_for :documents
end
