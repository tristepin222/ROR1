json.extract! person, :id, :gender, :firstname, :lastname, :birthdate, :address, :phonenumber, :email, :isteacher, :locality_id, :created_at, :updated_at
json.url person_url(person, format: :json)
