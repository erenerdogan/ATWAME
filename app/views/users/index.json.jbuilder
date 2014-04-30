json.users @users do |user|
	json.name user.name
	json.email user.email
	json.password user.password
	json.picture user.picture
	json.manager user.manager
end