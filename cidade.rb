class Cidade
  include Mongoid::Document

  field :nome
  belongs_to :estado
end