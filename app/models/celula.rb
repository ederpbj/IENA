class Celula < ApplicationRecord
  has_many :membro
  belongs_to :lider_treinamento
end
