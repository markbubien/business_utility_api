class Client < ApplicationRecord

	validates :name, :email, :address_1, :city, :postcode, :country, presence: true
	validates :email, format: {
		with: %r{\A[\w|.|-]+@[\w|-]+\.[\w]+\z},
	}, :unless => lambda { email.blank? }



end