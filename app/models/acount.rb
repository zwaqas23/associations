class Acount < ApplicationRecord
	validates_uniqueness_of :suplier_id
  belongs_to :suplier
end
