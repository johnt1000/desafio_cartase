class Donate < ApplicationRecord
  validate :verifica_arrecadacao

  belongs_to :user
  belongs_to :project

  validates :donate, presence: true, numericality: true

  private
    def verifica_arrecadacao
      if self.project.donates.sum(:donate) >= 500
        errors.add(:donate, 'Arrecadação total é maior que R$ 500.00.')
      end
    end

end
