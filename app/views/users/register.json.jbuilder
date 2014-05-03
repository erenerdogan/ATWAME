json.result @message
if(@message)
	json.(@user,:id, :name, :email, :picture)
end
