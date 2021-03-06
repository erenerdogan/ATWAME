json.result @message
if(@message)
   json.contents @contents do |content|
		json.content do
			json.(content, :id, :description, :user_id, :category_id,  :location_id)
		end

		json.user do
			json.(content.user,:id, :name, :picture)
		end
		json.location do
		    json.(content.location, :id, :latitude, :longitude)
	 	end

   end
end
