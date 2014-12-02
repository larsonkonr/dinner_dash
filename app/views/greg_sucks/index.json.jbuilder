json.array!(@greg_sucks) do |greg_suck|
  json.extract! greg_suck, :id, :sucks
  json.url greg_suck_url(greg_suck, format: :json)
end
