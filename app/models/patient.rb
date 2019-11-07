class Patient < ApplicationRecord
	has_many :physcians
	has_many :appointments, through: :appointments
end
