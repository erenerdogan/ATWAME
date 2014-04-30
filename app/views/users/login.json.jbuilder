json.result @message
if(@message)
	json.(@user,:name, :email, :picture)
end
