json.result @message
if(@message)
	json.comments @comments.comments do |comment|
		json.(comment, :id, :description, :user_id, :content_id)
		json.user do
			json.(comment.user, :id, :name,:picture)
		end
	end
end
