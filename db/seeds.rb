p "Cleaning db...................."

Flat.destroy_all

p 'Creating users.........................'


user1 = User.create!(email: 'alex@mail.com', password: 'azertyuiop', first_name: 'Alex', last_name: 'Vladim')
user2 = User.create!(email: 'sophie@mail.com', password: 'azertyuiop', first_name: 'Sophie', last_name: 'Parisot')
user3 = User.create!(email: 'vanessa@mail.com', password: 'azertyuiop', first_name: 'Vanessa', last_name: 'Reyesse')
user4 = User.create!(email: 'adrien@mail.com', password: 'azertyuiop', first_name: 'Adrien', last_name: 'Joseph')
user5 = User.create!(email: 'mathieu@mail.com', password: 'azertyuiop', first_name: 'Mathieu', last_name: 'Chirac')
user6 = User.create!(email: 'aimeric@mail.com', password: 'azertyuiop', first_name: 'Aimeric', last_name: 'Marchaud')
user7 = User.create!(email: 'romain@mail.com', password: 'azertyuiop', first_name: 'Romain', last_name: 'Frisset')
user8 = User.create!(email: 'lucas@mail.com', password: 'azertyuiop', first_name: 'Lucas', last_name: 'Hochard')
user9 = User.create!(email: 'oussama@mail.com', password: 'azertyuiop', first_name: 'Oussama', last_name: 'Labrousse')
user10 = User.create!(email: 'george@mail.com', password: 'azertyuiop', first_name: 'George', last_name: 'Justin')
user11 = User.create!(email: 'charlene@mail.com', password: 'azertyuiop', first_name: 'Charlène', last_name: 'Naomie')

p 'All my users is set.............'

p 'Creating flats.........................'

Flat.create!(title: 'Appartement T2 Toulouse', description: 'Un très jolie appartement 3 pièces au centre de Toulouse', price: 67, user_id: user1.id)
Flat.create!(title: 'Petit T1 à Toulouse', description: 'Venez decrouvrir Toulouse grace à notre appartement', price: 55, user_id: user2.id)
Flat.create!(title: 'Chambre à louer', description: 'Bonjour je loue une chambre dans quartier de Rangueil', price: 50, user_id: user3.id)
Flat.create!(title: 'Grand appartement T5 à Toulouse', description: 'Passez de bonne vancance dans notre grand appartement au plein centre du Capitol', price: 105, user_id: user4.id)
Flat.create!(title: 'T3 Saint-michel', description: 'Appartement t3 Saint-Michel', price: 70, user_id: user5.id)
Flat.create!(title: 'Toulouse appartement', description: 'Loue un appartement au nord de Toulouse avec parking', price: 58, user_id: user6.id)
Flat.create!(title: 'Studio à Toulouse', description: 'Petit studio au centre de Toulouse', price: 68, user_id: user7.id)
Flat.create!(title: 'Appartement Toulouse', description: 'Appartement à Toulouse idéal pour votre séjour', price: 72, user_id: user8.id)
Flat.create!(title: 'Appartement Pont Jumeaux', description: 'Louez un appartement à Pont Jumeaux', price: 88, user_id: user9.id)
Flat.create!(title: 'Appartement T3 Toulouse', description: 'Bonjour je loue un appartement 4', price: 67, user_id: user10.id)
Flat.create!(title: 'Villa à Muret', description: 'Profitez de vos vacance dans une grande villa pas de loins de Toulouse', price: 142, user_id: user11.id)

p 'All flats is set.........'
