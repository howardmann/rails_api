json.cats @cats do |cat|
  json.id cat.id
  json.name cat.name
  json.age cat.age
  json.secret do
    json.color cat.color
  end
end