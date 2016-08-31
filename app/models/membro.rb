class Membro < ApplicationRecord
  belongs_to :tipo

  validates :nome, length: { minimum: 4 }, presence: true
  validates :data_aniversario, presence: true
end
