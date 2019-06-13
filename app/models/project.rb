class Project < ApplicationRecord
  belongs_to :user
  has_many :donates, dependent: :destroy

  validates :title, presence: true
  validates :amount, presence: true, numericality: true
  validates :image, presence: true
  validates :donate, presence: true

  mount_uploader :image, ImageUploader

  def donate
  end
end