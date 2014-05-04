json.result @message
if(@message)
	
	json.(comment, :id, :description, :user_id, :content_id)
	json.user do
		json.(comment.user, :id, :name,:picture)
	end
	
end
