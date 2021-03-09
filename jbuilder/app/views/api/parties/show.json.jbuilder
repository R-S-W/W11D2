
json.extract! @party, :name
json.guests  @party.includes(guests: [:gifts]).each do |guest|
  json.extract! guest , :name
  json.gifts guest.gifts, :title

  
  

end