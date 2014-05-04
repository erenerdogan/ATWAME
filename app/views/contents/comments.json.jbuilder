json.result @message
if(@message)
	json.comments @comments do |comment|
		json.(comment, :id, :description, :user_id, :content_id)
		
	end
end
