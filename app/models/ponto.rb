class Ponto < ApplicationRecord
  has_one :celula
  has_one :membro  
end
