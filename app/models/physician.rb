class Physician < ApplicationRecord
	has_many :patients
	has_many :appointments, through: :appointments
end
