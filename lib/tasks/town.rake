namespace :towns  do
desc "create twons multi language"
	task :town => :environment do
		print "Add town fr en and ja"
		towns = [
				{
						lang: :fr,
						city: "Paris",				
				},
				{
						lang: :fr,
						city: "Versailles",				
				},
				{
						lang: :en,
						city: "Paris",				
				},
				{
						lang: :en,
						city: "Versailles",				
				},
				{
						lang: :ja,
						city: "パリ",				
				},
				{
						lang: :ja,
						city: "ヴェルサイユ",				
				},
				
		]
		towns.each do |c|
				I18n.locale = c[:lang]
				Town.create(name: c[:city])
		end
		puts "finish add category"
	end
end