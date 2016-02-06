json.users @users do |user|
  json.(user, :id, :name, :birth_date)
end
