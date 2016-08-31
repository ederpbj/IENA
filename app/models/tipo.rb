class Tipo < ApplicationRecord
  belongs_to :membro
  validates :nome, presence: true
end
