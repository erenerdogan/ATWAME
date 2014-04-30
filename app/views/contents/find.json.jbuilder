json.result @message
if(@message)
   
      json.category @content.category
      json.content @content
      json.location @content.location
      json.attachment @content.attachment
      json.comments @content.comments
end
