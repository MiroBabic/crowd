json.array!(@bios) do |bio|
  json.extract! bio, :id, :name, :street, :city, :zip, :phone, :contactemail, :picture, :fbprofile, :gplusprofile, :twitterprofile, :personalweb, :aboutme, :user_id
  json.url bio_url(bio, format: :json)
end
