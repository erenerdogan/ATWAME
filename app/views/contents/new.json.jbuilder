json.result @message
json.content do
	json.(content, :id, :description, :user_id, :category_id, :attachment_id, :location_id)
end

json.user do
	json.(content.user,:id, :name, :picture)
end

json.location do
    json.(content.location, :id, :latitude, :longitude)
end