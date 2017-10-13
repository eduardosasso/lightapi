module DataType
  def number
    Faker::Number.number.to_i
  end

  def string
    Faker::Lorem.word
  end

  def date
    Faker::Date.between(10.days.ago, Date.today)
  end

  # alias for bool
  def boolean
    Faker::Boolean.boolean
  end

  # alias for site
  def url
    Faker::Internet.url
  end

  def email
    Faker::Internet.email
  end

  # first_name = "Faker::Name.first_name"
  # last_name = "Faker::Name.last_name"

  # phone = "Faker::PhoneNumber.phone_number"
  # phone_number = "Faker::PhoneNumber.phone_number"

  # city = "Faker::Address.city" #=> "Imogeneborough"
  # street_name = "Faker::Address.street_name" #=> "Larkin Fork"
  # street = "Faker::Address.street_name"
  # street_address = "Faker::Address.street_address" #=> "282 Kevin Brook"
  # address = "Faker::Address.street_address"
  # secondary_address = "Faker::Address.secondary_address" #=> "Apt. 672"
  # building_number = "Faker::Address.building_number" #=> "7304"
  # community = "Faker::Address.community" #=> "University Crossing"
  # zip_code = "Faker::Address.zip_code" #=> "58517" or "23285-4905"
  # zip = "Faker::Address.zip" #=> "58517" or "66259-8212"
  # postcode = "Faker::Address.postcode" #=> "76032-4907" or "58517"
  # time_zone = "Faker::Address.time_zone" #=> "Asia/Yakutsk"
  # street_suffix = "Faker::Address.street_suffix" #=> "Street"
  # city_suffix = "Faker::Address.city_suffix" #=> "fort"
  # city_prefix = "Faker::Address.city_prefix" #=> "Lake"
  # state = "Faker::Address.state" #=> "California"
  # state_abbr = "Faker::Address.state_abbr" #=> "AP"
  # country = "Faker::Address.country" #=> "French Guiana"
  # country_code = "Faker::Address.country_code" #=> "IT"
  # country_code_long = "Faker::Address.country_code_long" #=> "ITA"
  # latitude = "Faker::Address.latitude" #=> "-58.17256227443719"
  # lat = "Faker::Address.latitude"
  # longitude = "Faker::Address.longitude" #=> "-156.65548382095133"
  # lng = "Faker::Address.longitude"
end
