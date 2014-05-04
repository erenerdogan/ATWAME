json.result @message
if(@message)
	
	json.(@comment, :id, :description, :user_id, :content_id)
	
end
