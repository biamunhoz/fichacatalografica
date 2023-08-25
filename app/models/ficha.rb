class Ficha < ApplicationRecord
    validates_presence_of :assunto1, message:  "Por favor, incluir pelo menos 1 assunto"
end
