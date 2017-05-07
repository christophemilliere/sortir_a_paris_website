namespace :towns  do
desc "create twons multi language"
	task :town => :environment do
		print "Add town fr en and ja"
		frances = %w(Paris Versaile)
		frances.each do |c|
			I18n.locale = :fr
			Town.create(name: c)
		end
		towns = [
				{
						id: 1,
						lang: :en,
						city: "Paris",				
				},
				{		
						id: 2,
						lang: :en,
						city: "Versailles",				
				},
				{
						id: 1,
						lang: :ja,
						city: "パリ",				
				},
				{
						id: 2,
						lang: :ja,
						city: "ヴェルサイユ",				
				},
				
		]
		towns.each do |c|
				I18n.locale = c[:lang]
				I18n.locale = c[:lang]
				if c[:id] == 1
					
					town = Town.find(c[:id])
					town.update(name: c[:city])
				end
				if c[:id] == 2
					
					town = Town.find(c[:id])
					town.update(name: c[:city])
				end
		end
		puts "finish add category"
	end
end