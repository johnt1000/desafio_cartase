class Donate < ApplicationRecord
  belongs_to :user
  belongs_to :project

  validates :donate, presence: true, numericality: true
end
