class Estado
  include Mongoid::Document

  field :sigla
  field :nome

  has_many :cidades
end