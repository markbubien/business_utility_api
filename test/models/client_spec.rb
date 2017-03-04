require 'rails_helper'

describe Client do

	let(:client) {build(:client)}

	context 'name is nil' do
		before :each do 
			client.name = nil
			client.valid?
		end
		it 'is invalid' do
			expect(client).to have(1).errors_on(:name)
		end
		it 'raises the correct error message' do
			expect(client.errors[:name].first).to eq("Name cannot be blank.")
		end
	end	

	context 'name is an empty string' do
		before :each do 
			client.name = ''
			client.valid?
		end
		it 'is invalid' do
			expect(client).to have(1).errors_on(:name)
		end
		it 'raises the correct error message' do
			expect(client.errors[:name].first).to eq("Name cannot be blank.")
		end
	end

	context 'email is nil' do
		before :each do 
			client.email = nil
			client.valid?
		end
		it 'is invalid' do
			expect(client).to have(1).errors_on(:email)
		end
		it 'raises the correct error message' do
			expect(client.errors[:email].first).to eq("Email cannot be blank.")
		end
	end	

	context 'email is an empty string' do
		before :each do 
			client.email = ''
			client.valid?
		end
		it 'is invalid' do
			expect(client).to have(1).errors_on(:email)
		end
		it 'raises the correct error message' do
			expect(client.errors[:email].first).to eq("Email cannot be blank.")
		end
	end

	context 'email is in an incorrect format' do
		emails = ['xxx', 'xxx@yyy', 'xxx.com', 'xx%x@yyy.com', 'xxx@yyy.zz-zz.com']
		emails.each do |email|
			before :each do 
				client.email = email
				client.valid?
			end
			it 'is invalid' do
				expect(client).to have(1).errors_on(:email)
			end
			it 'raises the correct error message' do
				expect(client.errors[:email].first).to eq("Email address is not in the correct format.")
			end
		end
	end
	
	context 'address_1 is nil' do
		before :each do 
			client.address_1 = nil
			client.valid?
		end
		it 'is invalid' do
			expect(client).to have(1).errors_on(:address_1)
		end
		it 'raises the correct error message' do
			expect(client.errors[:address_1].first).to eq("Address 1 cannot be blank.")
		end
	end	

	context 'address_1 is an empty string' do
		before :each do 
			client.address_1 = ''
			client.valid?
		end
		it 'is invalid' do
			expect(client).to have(1).errors_on(:address_1)
		end
		it 'raises the correct error message' do
			expect(client.errors[:address_1].first).to eq("Address 1 cannot be blank.")
		end
	end

	context 'city is nil' do
		before :each do 
			client.city = nil
			client.valid?
		end
		it 'is invalid' do
			expect(client).to have(1).errors_on(:city)
		end
		it 'raises the correct error message' do
			expect(client.errors[:city].first).to eq("City cannot be blank.")
		end
	end	

	context 'city is an empty string' do
		before :each do 
			client.city = ''
			client.valid?
		end
		it 'is invalid' do
			expect(client).to have(1).errors_on(:city)
		end
		it 'raises the correct error message' do
			expect(client.errors[:city].first).to eq("City cannot be blank.")
		end
	end

	context 'postcode is nil' do
		before :each do 
			client.postcode = nil
			client.valid?
		end
		it 'is invalid' do
			expect(client).to have(1).errors_on(:postcode)
		end
		it 'raises the correct error message' do
			expect(client.errors[:postcode].first).to eq("Postcode cannot be blank.")
		end
	end	

	context 'postcode is an empty string' do
		before :each do 
			client.postcode = ''
			client.valid?
		end
		it 'is invalid' do
			expect(client).to have(1).errors_on(:postcode)
		end
		it 'raises the correct error message' do
			expect(client.errors[:postcode].first).to eq("Postcode cannot be blank.")
		end
	end

	context 'country is nil' do
		before :each do 
			client.country = nil
			client.valid?
		end
		it 'is invalid' do
			expect(client).to have(1).errors_on(:country)
		end
		it 'raises the correct error message' do
			expect(client.errors[:country].first).to eq("Country cannot be blank.")
		end
	end	

	context 'country is an empty string' do
		before :each do 
			client.country = ''
			client.valid?
		end
		it 'is invalid' do
			expect(client).to have(1).errors_on(:country)
		end
		it 'raises the correct error message' do
			expect(client.errors[:country].first).to eq("Country cannot be blank.")
		end
	end



end