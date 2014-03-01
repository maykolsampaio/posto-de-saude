class Doenca < ActiveRecord::Base
has_and_belongs_to_many :pessoas
	columns.each do |c|
		attr_accessible c.name.to_sym
	end
end
