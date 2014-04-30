json.result @message
if(@message)
   json.contents @contents do |content|
	json.category content.category
	json.content content
	json.location content.location
	json.attachment content.attachment
	json.comments content.comments
   end
end
