class Pessoa < ActiveRecord::Base
  belongs_to :ocupacao
  has_and_belongs_to_many :doencas 
  has_and_belongs_to_many :comunicacaos
  has_and_belongs_to_many :transportes
  has_and_belongs_to_many :grupo_comunitarios
  belongs_to :ficha
  columns.each do |c|
		attr_accessible c.name.to_sym
	end
end
