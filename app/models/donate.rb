class Donate < ApplicationRecord

  belongs_to :user
  belongs_to :project

  validates :donate, presence: true, numericality: true
  validate :verifica_arrecadacao

  private
    def verifica_arrecadacao
      if self.donate != nil
        if self.project.donates.sum(:donate) + self.donate > 500
          errors.add(:donate, 'Arrecadação total é maior que R$ 500.00.')
        end
      end
    end
end
