# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  
  towns = %w(Paris Versailles)
  towns.each do |c|
    Town.create(name: c)
  end

town = Town.find_by(name: 'Paris')

monuments = [{
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
      name: "Arc de Triomphe",
      description: "Situé sur la place de l’Étoile, en haut de l’avenue des Champs-Élysées, l’Arc de triomphe est le plus grand arc du monde. Sa construction date de 1806, à la demande de Napoléon, pour célébrer la victoire de l’empereur à Austerlitz. Les architectes Chalgrin, Joust et Blouet ont réalisé
      le monument. Les sculptures sont signées Cortot, Rude, Etex, Pradier et Lemaire. Sous l’arc se trouve la tombe du Soldat Inconnu, dont la flamme est ravivée tous les soirs à 18h30. Au sommet du monument, le visiteur profite d’une vue panoramique de Paris, de jour comme de nuit, et de deux tables d’orientation. Un musée retraçant
      l’histoire de l’Arc de triomphe, situé à l’intérieur de l’édifice, complète la visite.",
      url: "http://www.paris-arc-de-triomphe.fr/",
      address: "Place Charles-de-Gaulle",
      city: "Paris",
      zip_code: 75008,
      lat: 48.8737573, lng: 2.2959091
    },
    {
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
      name: "Panthéon",
      description: "Sa silhouette et son dôme se détachent sur la montagne Sainte-Geneviève, colline historique du Quartier latin. Cette ancienne église dédiée à
      la sainte patronne de Paris abrite dans sa crypte, depuis la Révolution française, une nécropole de grands personnages de la république - dont Victor Hugo,
      Marie Curie et Alexandre Dumas. D’avril à octobre, on apprécie la vue sur Paris ",
      url: "http://www.paris-pantheon.fr/",
      address: "Place du Panthéon",
      city: "Paris",
      zip_code: 75005,
      lat: 48.8467002,
      lng: 2.3463884
    },
    {
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
    }]


    monuments.each do |m|

      Monument.create(
                      name: m[:name],
                      description: m[:description],
                      url: m[:url],
                      address: m[:address],
                      city: m[:city],
                      zip_code: m[:zip_code],
                      user: user,
                      town_id: town.id,
                      )
    end
