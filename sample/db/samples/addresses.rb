united_states = Spree::Country.find_by_iso!("US")
new_york = Spree::State.find_by_name!("New York")

# Billing address
Spree::Address.create!(
  firstname: FFaker::Name.first_name,
  lastname: FFaker::Name.last_name,
  address1: FFaker::Address.street_address,
  address2: FFaker::Address.secondary_address,
  city: FFaker::Address.city,
  state: new_york,
  zipcode: 16_804,
  country: united_states,
  phone: FFaker::PhoneNumber.phone_number)

# Shipping address
Spree::Address.create!(
  firstname: FFaker::Name.first_name,
  lastname: FFaker::Name.last_name,
  address1: FFaker::Address.street_address,
  address2: FFaker::Address.secondary_address,
  city: FFaker::Address.city,
  state: new_york,
  zipcode: 16_804,
  country: united_states,
  phone: FFaker::PhoneNumber.phone_number)
