class Ocupacao < ActiveRecord::Base
has_many :pessoas
columns.each do |c|
		attr_accessible c.name.to_sym
	end
end
