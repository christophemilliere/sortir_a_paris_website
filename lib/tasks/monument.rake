namespace :monuments  do
desc "create monument multi language"
	task :monument => :environment do
		user = User.first
		monuments = [
			{
				lang: :fr,
				name: "La tour Eiffel",
				description: "Symbole et monument incontournable de la capitale, la Tour Eiffel culmine à 325 m de hauteur pour un poids total de 10 100 tonnes, dont 7 300 tonnes pour la charpente métallique. Réalisée en 2 ans, 2 mois et 5 jours, elle fut érigée à l’occasion de l’Exposition Universelle de 1889.
				On peut y accéder par escalier ou par ascenseur : au 1er étage, entièrement réaménagé, retrouvez les boutiques; au 2ème, laissez-vous tenter par un repas gastronomique au très célèbre restaurant Jules Verne, à 125 m au-dessus du sol. Enfin au 3ème étage, côtoyez les nuages et profitez d’une vue exceptionnelle à 360° !
				Table d'orientation située au 3ème étage de la Tour Eiffel",
				url: "http://www.toureiffel.paris/",
				address: "5 avenue Anatole France - Champ de Mars",
				city: "paris",
				zip_code: 75007,
				lat: 48.8588871,
				lng: 2.2944861,
			},
			{
				lang: :fr,
				name: "Arc de Triomphe",
				description: "Situé sur la place de l’Étoile, en haut de l’avenue des Champs-Élysées, l’Arc de triomphe est le plus grand arc du monde. Sa construction date de 1806, à la demande de Napoléon, pour célébrer la victoire de l’empereur à Austerlitz. Les architectes Chalgrin, Joust et Blouet ont réalisé
				le monument. Les sculptures sont signées Cortot, Rude, Etex, Pradier et Lemaire. Sous l’arc se trouve la tombe du Soldat Inconnu, dont la flamme est ravivée tous les soirs à 18h30. Au sommet du monument, le visiteur profite d’une vue panoramique de Paris, de jour comme de nuit, et de deux tables d’orientation. Un musée retraçant
				l’histoire de l’Arc de triomphe, situé à l’intérieur de l’édifice, complète la visite.",
				url: "http://www.paris-arc-de-triomphe.fr/",
				address: "Place Charles-de-Gaulle",
				city: "Paris",
				zip_code: 75008,
				lat: 48.8737573, 
				lng: 2.2959091
			},
			{
				lang: :fr,
				name: "Tours de Notre-Dame de Paris",
				description: "Après l’ascension des 422 marches des tours de la cathédrale Notre-Dame, le visiteur est récompensé par une des plus belles vues
				panoramiques de Paris. Avant l’accès au sommet, le parcours est marqué par trois étapes incontournables. La salle haute dévoile une admirable
				architecture gothique voutée d’ogives. La galerie des chimères permet d’approcher les fameuses gargouilles, dont la célèbre Stryge. Et quelques
				marches avant le sommet, le visiteur s’arrête pour admirer de plus près le beffroi, les cloches et le célèbre bourdon Emmanuel de 14 tonnes.",
				url: "http://www.tours-notre-dame-de-paris.fr/",
				address: "Rue du cloître Notre-Dame",
				city: "Paris",
				zip_code: 75004,
				lat: 48.8531376,
				lng: 2.3505766
			},
			{
				lang: :fr,
				name: "Conciergerie",
				description: "Cet important vestige du palais des Capétiens offre un remarquable témoignage sur l'architecture civile du XIVe siècle avec la salle des
				Gens d'Armes, la salle des Gardes et les cuisines. a quasi totalité du niveau bas du palais fut transformée en prison au XVe siècle;
				on peut y visiter les cachots (celui de Marie-Antoinette, notamment) et découvrir les souvenirs de la Révolution.",
				url: "http://www.paris-conciergerie.fr/",
				address: "2 boulevard du Palais",
				city: "Paris",
				zip_code: 75001,
				lat: 48.8554985,
				lng: 2.3458635
			},
			{
				lang: :fr,
				name: "Sainte-Chapelle",
				description: "Située sur l’île de la Cité, à quelques pas de Notre-Dame de Paris, La Sainte-Chapelle est un joyau de l’art gothique. Elle est édifiée au
				XIIe siècle, sur ordre du roi Saint-Louis, pour abriter la couronne d’épines du Christ, conservée aujourd’hui à Notre-Dame. La chapelle haute du monument
				est couverte de 600 m² de vitraux, dont les deux tiers sont authentiques. Il s’agit de l’un des ensembles les plus complets et les plus remarquables de l’art
				du vitrail de cette époque.",
				url: "http://www.sainte-chapelle.fr/",
				address: "8 boulevard du Palais",
				city: "Paris",
				zip_code: 75001,
				lat:48.8550408,
				lng: 2.345338
			},
			{
				lang: :fr,
				name: "Opéra National de Paris - Palais Garnier",
				description: "Chef-d'oeuvre d'architecture théâtrale du XIXe siècle, le Palais Garnier, construit par Charles Garnier et inauguré en 1875, est la treizième
				salle d'opéra à Paris depuis la fondation de cette institution par Louis XIV en 1669. Sa construction fut décidée par Napoléon III dans le cadre des grands
				travaux de rénovation de la capitale menés à bien sous son ordre par le Baron Haussmann. Un monument historique ouvert aux visiteurs pendant la journée.
				Il présente des spectacles lyriques et chorégraphiques. A noter : le plafond de la salle de l'Opéra de Chagall.",
				url: "https://www.operadeparis.fr/",
				address: "Place de l'Opéra",
				city: "Paris",
				zip_code: 75009,
				lat: 48.8706782,
				lng: 2.3323311
			},
			{
				lang: :fr,
				name: "Panthéon",
				description: "Sa silhouette et son dôme se détachent sur la montagne Sainte-Geneviève, colline historique du Quartier latin. Cette ancienne église dédiée à
				la sainte patronne de Paris abrite dans sa crypte, depuis la Révolution française, une nécropole de grands personnages de la république - dont Victor Hugo,
				Marie Curie et Alexandre Dumas. D’avril à octobre, on apprécie la vue sur Paris",
				url: "http://www.paris-pantheon.fr/",
				address: "Place du Panthéon",
				city: "Paris",
				zip_code: 75005,
				lat: 48.8467002,
				lng: 2.3463884
			},
			{
				lang: :fr,
				name: "Basilique du Sacré-Coeur de Montmartre",
				description: "La basilique du Sacré-Cœur, consacrée en 1919, est l’un des monuments emblématiques de Paris. Située au sommet de la butte Montmartre,
				elle offre une des plus belles vues panoramiques de la capitale, à 130 mètres d’altitude. De style romano-byzantin, la basilique est reconnaissable
				à sa couleur blanche. A l’intérieur de l’édifice, le plafond est décoré de la plus grande mosaïque de France, mesurant 480 m². La crypte mérite
				aussi une visite. Et pour prendre encore plus de hauteur, le visiteur peut accéder au dôme, d’où la vue de Paris à 360° est magnifique.
				À quelques pas de la basilique, se trouvent la place du Tertre, le quartier des Abbesses aux petites rues escarpées, et au pied de la butte,
				le célèbre cabaret du Moulin Rouge.",
				url: "http://www.sacre-coeur-montmartre.com/",
				address: "35 rue du Chevalier de la Barre",
				city: "Paris",
				zip_code: 75018,
				lat: 48.8867524,
				lng:2.3430419
			},
			{
				lang: :fr,
				name: "Cathédrale Notre-Dame de Paris",
				description: "La cathédrale Notre-Dame de Paris, chef d’œuvre de l’architecture gothique, est le monument le plus visité de France. Située dans le centre
				historique de Paris, à l’extrémité de l’île de la Cité, sa construction débute au Moyen Âge. Les travaux ont commencé aux XIIIe et se sont terminés au XVe
				siècle. Très endommagée pendant la Révolution française, la cathédrale a fait l’objet d’une restauration au XIXe siècle dirigée par l’architecte Viollet-le-Duc.
				Les nombreux visiteurs admirent les vitraux et rosaces, les tours, la flèche et les gargouilles. Ils peuvent également découvrir le Trésor de Notre-Dame et
				tenter l’ascension des tours pour profiter d’une vue panoramique de Paris. En 2013, Notre-Dame célèbre son 850e anniversaire. À l’occasion de ce jubilé, de
				nombreuses manifestations sont organisées et la cathédrale renouvelle son patrimoine campanaire avec l’arrivée de huit nouvelles cloches et d’un nouveau
				bourdon. Les distances routières de France se calculent à partir du point 0, situé sur le parvis.",
				url: "http://www.notredamedeparis.fr/",
				address: "6 place du Parvis Notre-Dame",
				city: "Paris",
				zip_code: 75004,
				lat: 48.85267,
				lng: 2.3492923
			}
		# 	{
		# 		lang: :en,
		# 		name: "The Eiffel Tower",
		# 		description: "The Eiffel Tower is the capital's symbol and landmark, and culminates at 325 m in height, with a total weight of 10,100 tons, of which 7,300 tons are for the metal frame. Built in 2 years, 2 months and 5 days, it was erected on the occasion of the Universal Exhibition of 1889.
		# 		It can be reached by stairs or by elevator: on the 1st floor, completely refurbished, find the shops; At the 2nd, let yourself be tempted by a gourmet meal at the famous restaurant Jules Verne, 125 m above the ground. Finally on the 3rd floor, you can see the clouds and enjoy an exceptional 360 ° view!
		# 		Orientation table located on the 3rd floor of the Eiffel Tower",
		# 		url: "http://www.toureiffel.paris/en/",
		# 		address: "5 avenue Anatole France - Champ de Mars",
		# 		city: "paris",
		# 		zip_code: 75007,
		# 		lat: 48.8588871,
		# 		lng: 2.2944861,
		# },
		# {
		# 		lang: :en,
		# 		name: "Arc de Triomphe",
		# 		description: "Located on the Place de l'Étoile, at the top of the Avenue des Champs-Élysées, the Arc de Triomphe is the largest arc in the world. Its construction dates from 1806, at the request of Napoleon, to celebrate the victory of the emperor in Austerlitz. The architects Chalgrin, Joust and Blouet realized
		# 		the monument. The sculptures are signed by Cortot, Rude, Etex, Pradier and Lemaire. Under the arch is the tomb of the Unknown Soldier, whose flame is revived every evening at 6:30 pm. At the top of the monument, the visitor enjoys a panoramic view of Paris, day and night, and two orientation tables. A museum retracing
		# 		The history of the Arc de Triomphe, located inside the building, completes the visit.",
		# 		url: "http://www.paris-arc-de-triomphe.fr/en/",
		# 		address: "Place Charles-de-Gaulle",
		# 		city: "Paris",
		# 		zip_code: 75008,
		# 		lat: 48.8737573, 
		# 		lng: 2.2959091
		# },
		# {
		# 		lang: :en,
		# 		name: "Tours of Notre-Dame de Paris",
		# 		description: "After ascending the 422 steps of the towers of Notre-Dame Cathedral, the visitor is rewarded with one of the most beautiful views
		# 		Panoramic views of Paris. Before the access to the summit, the course is marked by three unavoidable steps. The upper room reveals an admirable
		# 		Gothic architecture vaulted with ribbons. The gallery of chimeras allows to approach the famous gargoyles, including the famous Stryge. And some
		# 		Before the summit, the visitor stops to take a closer look at the belfry, the bells and the famous 14-ton Emmanuel bumblebee.",
		# 		url: "http://www.tours-notre-dame-de-paris.fr/en/",
		# 		address: "Rue du cloître Notre-Dame",
		# 		city: "Paris",
		# 		zip_code: 75004,
		# 		lat: 48.8531376,
		# 		lng: 2.3505766
		# },
		# {
		# 		lang: :en,
		# 		name: "Conciergerie",
		# 		description: "This important vestige of the palace of the Capetians offers a remarkable testimony on the civil architecture of the XIVth century with the room of the
		# 		People of Arms, the Guards Room and the kitchens. Almost all of the lower level of the palace was transformed into a prison in the fifteenth century;
		# 		One can visit the dungeons (the one of Marie-Antoinette, in particular) and discover the memories of the Revolution.",
		# 		url: "http://www.paris-conciergerie.fr/en/",
		# 		address: "2 boulevard du Palais",
		# 		city: "Paris",
		# 		zip_code: 75001,
		# 		lat: 48.8554985,
		# 		lng: 2.3458635
		# },
		# {
		# 		lang: :en,
		# 		name: "Sainte-Chapelle",
		# 		description: "Located on the Île de la Cité, a few steps from Notre-Dame de Paris, La Sainte-Chapelle is a jewel of Gothic art. It is built on the
		# 		12th century, on the orders of King St. Louis, to house the crown of thorns of Christ, preserved today at Notre-Dame. The high chapel of the monument
		# 		Is covered with 600 m² of stained glass, two-thirds of which are authentic. It is one of the most complete and most remarkable ensembles of art
		# 		Of the stained glass window of that period.",
		# 		url: "http://www.sainte-chapelle.fr/en/",
		# 		address: "8 boulevard du Palais",
		# 		city: "Paris",
		# 		zip_code: 75001,
		# 		lat:48.8550408,
		# 		lng: 2.345338
		# },
		# {
		# 		lang: :en,
		# 		name: "Opéra National de Paris - Palais Garnier",
		# 		description: "A masterpiece of nineteenth century theater architecture, the Palais Garnier, built by Charles Garnier and inaugurated in 1875, is the thirteenth
		# 		Opera house in Paris since the founding of this institution by Louis XIV in 1669. Its construction was decided by Napoleon III in the framework of the great
		# 		Renovation works of the capital carried out under his order by the Baron Haussmann. A historical monument open to visitors during the day.
		# 		It presents lyrical and choreographic performances. Note: the ceiling of the room of the Opera de Chagall.",
		# 		url: "https://www.operadeparis.fr/en",
		# 		address: "Place de l'Opéra",
		# 		city: "Paris",
		# 		zip_code: 75009,
		# 		lat: 48.8706782,
		# 		lng: 2.3323311
		# },
		# {
		# 		lang: :en,
		# 		name: "Panthéon",
		# 		description: "Its silhouette and its dome stand out on the Sainte-Geneviève mountain, historic hill of the Latin Quarter. This former church dedicated to
		# 		The patron saint of Paris shelters in her crypt, since the French Revolution, a necropolis of great people of the republic - including Victor Hugo,
		# 		Marie Curie and Alexandre Dumas. From April to October, we enjoy the view of Paris",
		# 		url: "http://www.paris-pantheon.fr/en/",
		# 		address: "Place du Panthéon",
		# 		city: "Paris",
		# 		zip_code: 75005,
		# 		lat: 48.8467002,
		# 		lng: 2.3463884
		# },
		# {
		# 		lang: :en,
		# 		name: "Basilique du Sacré-Coeur de Montmartre",
		# 		description: "The Basilica of the Sacred Heart, consecrated in 1919, is one of the emblematic monuments of Paris. Located at the top of the Montmartre hill,
		# 		It offers one of the most beautiful panoramic views of the capital, 130 meters above sea level. Roman-Byzantine style, the basilica is recognizable
		# 		To its white color. Inside the building, the ceiling is decorated with the largest mosaic in France, measuring 480 m². The crypt deserves
		# 		Also a visit. And to take even more height, the visitor can access the dome, from where the 360 ° view of Paris is magnificent.
		# 		A few steps away from the Basilica are the Place du Tertre, the Abbesses quarter with steep little streets, and at the foot of the hill,
		# 		The famous Moulin Rouge cabaret.",
		# 		url: "http://www.sacre-coeur-montmartre.com/english/",
		# 		address: "35 rue du Chevalier de la Barre",
		# 		city: "Paris",
		# 		zip_code: 75018,
		# 		lat: 48.8867524,
		# 		lng:2.3430419
		# },
		# {
		# 		lang: :en,
		# 		name: "Cathédrale Notre-Dame de Paris",
		# 		description: "The Cathedral Notre-Dame de Paris, a masterpiece of Gothic architecture, is the most visited monument in France. Located in the center
		# 		Historic city of Paris, at the end of the island of the City, its construction begins in the Middle Ages. The works began in the 13th and ended in the 15th
		# 		century. Very damaged during the French Revolution, the cathedral was restored in the 19th century under the direction of the architect Viollet-le-Duc.
		# 		Many visitors admire the stained glass windows, rosettes, towers, spiers and gargoyles. They can also discover the treasure of Notre-Dame and
		# 		Try to climb the towers to enjoy a panoramic view of Paris. In 2013, Notre-Dame celebrates its 850th anniversary. On the occasion of this jubilee,
		# 		Numerous events are organized and the cathedral renews its campanarian heritage with the arrival of eight new bells and a new
		# 		Bumblebee. Road distances from France are calculated from point 0, located on the forecourt.",
		# 		url: "http://www.notredamedeparis.fr/en/",
		# 		address: "6 place du Parvis Notre-Dame",
		# 		city: "Paris",
		# 		zip_code: 75004,
		# 		lat: 48.85267,
		# 		lng: 2.3492923
		# },
		# 	{
		# 		lang: :ja,
		# 		name: "エッフェル塔",
		# 		description: "首都のシンボルと見事な記念碑は、エッフェル塔は10,100トン、鉄骨のための7300トンの総重量と高い325メートルに上昇します。2年、2ヶ月と5日で作られた、それは1889年の万国博覧会の際に建てられました。
		# 		これは、階段やエレベーターでアクセス可能です：1階、完全に改装され、お店を見つけます。第二は、125メートル地上、有名なジュールス・ヴァーンレストランでグルメな食事をお楽しみください。最後に、3階に、雲にたむろし、偉大な360度の景色をお楽しみください！
		# 		エッフェル塔の3階の視点",
		# 		url: "http://www.toureiffel.paris/jp/",
		# 		address: "5 avenue Anatole France - Champ de Mars",
		# 		city: "paris",
		# 		zip_code: 75007,
		# 		lat: 48.8588871,
		# 		lng: 2.2944861,
		# },
		# {
		# 		lang: :ja,
		# 		name: "Arc de Triomphe",
		# 		description: "エトワール広場、シャンゼリゼ通りの上に位置し、凱旋門は、世界最大の弧です。その構造は、アウステルリッツの皇帝の勝利を祝うために、ナポレオンの要請で、1806年からさかのぼります。建築家Chalgrin、馬上槍試合と実現Blouet
		# 		記念碑。彫刻はコルトー、ルード、ETEX、Pradierとルメールを締結しています。アーチの下に炎18:30毎晩再燃している無名戦士の墓です。碑の上部には、訪問者はパリ、昼と夜と2つの方向のテーブルのパノラマビューを楽しんでいます。博物館のトレース
		# 		建物の中にある凱旋門の歴史は、訪問を完了します。",
		# 		url: "http://www.paris-arc-de-triomphe.fr/en/",
		# 		address: "Place Charles-de-Gaulle",
		# 		city: "Paris",
		# 		zip_code: 75008,
		# 		lat: 48.8737573, 
		# 		lng: 2.2959091
		# },
		# {
		# 		lang: :ja,
		# 		name: "Tours of Notre-Dame de Paris",
		# 		description: "ノートルダム大聖堂の塔の422のステップを登るの後、訪問者が最高の景色で報われ
		# 		パリのパノラマ。頂上へアクセスする前に、ルートは3つの必須のステップでマークされています。上側の部屋には立派なを明らかに
		# 		ゴシック建築は、核弾頭をアーチ型。ギャラリーキメラは有名なStrigoi含め、有名なガーゴイルに近づくことができます。そして、いくつかの
		# 		サミット前の手順では、訪問者が近い鐘楼、鐘、有名なブルドン14トンのエマニュエルを賞賛する停止します。",
		# 		url: "http://www.tours-notre-dame-de-paris.fr/en/",
		# 		address: "Rue du cloître Notre-Dame",
		# 		city: "Paris",
		# 		zip_code: 75004,
		# 		lat: 48.8531376,
		# 		lng: 2.3505766
		# },
		# {
		# 		lang: :ja,
		# 		name: "Conciergerie",
		# 		description: "カペー宮殿のこの重要な痕跡は部屋と14世紀の市民建築の顕著な証言であります
		# 		Gensのダームス、ガードルーム、キッチン。ほぼ宮殿の全体のより低いレベルは、15世紀の刑務所に変換しました。
		# 		あなたは（特に、マリー・アントワネットのもの）を訪問し、革命の思い出を発見することができダンジョン。",
		# 		url: "http://www.paris-conciergerie.fr/en/",
		# 		address: "2 boulevard du Palais",
		# 		city: "Paris",
		# 		zip_code: 75001,
		# 		lat: 48.8554985,
		# 		lng: 2.3458635
		# },
		# {
		# 		lang: :ja,
		# 		name: "Sainte-Chapelle",
		# 		description: "市の島に位置し、ノートルダム・ド・パリ、サント・シャペルからいくつかの手順は、ゴシック芸術の逸品です。それが組み込まれています
		# 		12世紀には、キリストのいばらの冠を収容する王セントルイスの順序によって、ノートルダム寺院で今日保存しました。記念碑のチャペルの高いです
		# 		ステンドグラスの窓の600㎡で覆われている、の3分の2が本物です。これは最も完全なセットと驚くべき芸術の一つであります
		# 		この時期のステンドグラス。",
		# 		url: "http://www.sainte-chapelle.fr/en/",
		# 		address: "8 boulevard du Palais",
		# 		city: "Paris",
		# 		zip_code: 75001,
		# 		lat:48.8550408,
		# 		lng: 2.345338
		# },
		# {
		# 		lang: :ja,
		# 		name: "Opéra National de Paris - Palais Garnier",
		# 		description: "第19世紀の劇場建築の傑作、パレ・ガルニエ、シャルル・ガルニエによって建てられ、1875年に発足は、第十三です
		# 		1669.その建設にルイXIVことで、この制度の創設以来、パリのオペラハウスは、大手のコンテキストでナポレオンIIIによって決定されました
		# 		バロン・ハウスマンによって彼の命令の下で行われ、資本の改装。日中の観光客に開放歴史的建造物。
		# 		これは、オペラやバレエを提示します。注意：オペラハウスシャガールのホールの天井を。",
		# 		url: "https://www.operadeparis.fr/en",
		# 		address: "Place de l'Opéra",
		# 		city: "Paris",
		# 		zip_code: 75009,
		# 		lat: 48.8706782,
		# 		lng: 2.3323311
		# },
		# {
		# 		lang: :ja,
		# 		name: "Panthéon",
		# 		description: "そのシルエットとそのドームは、モンターニュサント・ジュヌヴィエーヴ、カルチェラタンの歴史的な丘の上に立ちます。に捧げ、この古代の教会
		# 		フランス革命以来の地下室で、パリの家の守護聖人、共和国の偉大な人物のネクロポリス - ヴィクトル・ユゴー含め、
		# 		マリー・キュリーとアレクサンドル・デュマ。4月から10月まで、パリの眺めを楽しみます",
		# 		url: "http://www.paris-pantheon.fr/en/",
		# 		address: "Place du Panthéon",
		# 		city: "Paris",
		# 		zip_code: 75005,
		# 		lat: 48.8467002,
		# 		lng: 2.3463884
		# },
		# {
		# 		lang: :ja,
		# 		name: "Basilique du Sacré-Coeur de Montmartre",
		# 		description: "1919年に献堂聖心の大聖堂は、パリのランドマークの一つです。モンマルトルの最上部に位置し、
		# 		それは130メートル、海抜首都の最も美しいパノラマの景色を提供しています。ローマ・ビザンチン様式の聖堂で認識可能です
		# 		その白い色。建物の内部では、天井が480平方メートルを測定し、フランスの最大のモザイクで飾られています。地下室は値します
		# 		また訪問。そして、さらに多くの高さを取るために、訪問者はパリ360の眺めが美しいドームを、アクセスすることができます。
		# 		聖堂からわずかの手順は、テルトル広場、アベス小さな急な街で、丘のふもとに
		# 		有名なムーランルージュキャバレー。",
		# 		url: "http://www.sacre-coeur-montmartre.com/english/",
		# 		address: "35 rue du Chevalier de la Barre",
		# 		city: "Paris",
		# 		zip_code: 75018,
		# 		lat: 48.8867524,
		# 		lng:2.3430419
		# },
		# {
		# 		lang: :ja,
		# 		name: "Cathédrale Notre-Dame de Paris",
		# 		description: "ノートルダム・ド・パリ、ゴシック建築の傑作は、フランスの最も訪問された記念碑です。中心部に位置
		# 		市の島の終わりにパリの歴史は、その建設は、中世に始まりました。作業は、第十三に始まったと15に完成しました
		# 		世紀。ひどくフランス革命中に破損し、大聖堂は建築家ヴィオレ・ル・デュクが率いる19世紀における復旧の対象となりました。
		# 		多くの来場者は、ステンドグラスを賞賛し、窓、塔、矢やガーゴイルの増加となりました。彼らはまた、ノートルダムの宝物を発見することができ、
		# 		パリのパノラマの景色を楽しむために塔を登ってみてください。 2013年に、ノートルダムは、その第八百五十周年を迎えます。この周年の機会に
		# 		多くのイベントが組織され、大聖堂の鐘が8つの新しい鐘の到着とその遺産を更新し、新しいされています
		# 		ドローン。フランスの道路距離は広場に位置する点0から計算されます。",
		# 		url: "http://www.notredamedeparis.fr/ja/",
		# 		address: "6 place du Parvis Notre-Dame",
		# 		city: "Paris",
		# 		zip_code: 75004,
		# 		lat: 48.85267,
		# 		lng: 2.3492923
		# }
		]
		


		
		I18n.locale = :fr
		paris = Town.where.not(name: nil).first
		monuments.each do |m|
			Monument.create(
											name: m[:name],
											description: m[:description],
											url: m[:url],
											address: m[:address],
											city: m[:city],
											zip_code: m[:zip_code],
											user: user,
											town: paris,
											)
		end
		puts " fin des enregistrement"
	end
end