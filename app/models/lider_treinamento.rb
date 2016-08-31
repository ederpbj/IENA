class LiderTreinamento < ApplicationRecord
  has_one :membro
  has_one :celula
end
