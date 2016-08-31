class Membro < ApplicationRecord
  belongs_to :atividade
  belongs_to :celula
  belongs_to :lider_treinamento
  
  has_one :tipo

  validates :name, length: { minimum: 4 }, presence: true
  validates :data_aniversario, presence: true
end
