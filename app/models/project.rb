class Project < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :amount, presence: true, numericality: true
  validates :image, presence: true

  mount_uploader :image, ImageUploader
end