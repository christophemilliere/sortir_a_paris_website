namespace :Users  do
desc "Create user "
	task :user1 => :environment do
		user = User.create!(email: "christophemilliere93@gmail.com", password: "12345678", password_confirmation: "12345678")
	end
end