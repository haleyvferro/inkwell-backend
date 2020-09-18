# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Game.destroy_all
GamePlayer.destroy_all
GameMasterNotebook.destroy_all
GameMasterNote.destroy_all

haley = User.create(email:'haleyvferro@gmail.com', username:'haleyvferro', password:'password')
emily = User.create(email:'emilyrux@fake.com', username:'RUEmi', password:'password')
kelsy = User.create(email:'kelsykuhnle@fake.com', username:'KKuhnle', password:'password')
scarlett = User.create(email:'scarlettfedie@fake.com', username:'ScarFed', password:'password')

ehlonna = Game.create(gm_id: haley.id, game_name:"Ehlonna's Paradise", game_description:"On this island nicknamed 'Ehlonna's Paradise': Magic is illegal, the monarchy is on their way out, a cult is running rampant, a foreign Queen is invading, and Ehlonna (the island's resident goddess) nowhere to be found.")

GamePlayer.create(game_id: ehlonna.id, user_id: emily.id)
GamePlayer.create(game_id: ehlonna.id, user_id: kelsy.id)
GamePlayer.create(game_id: ehlonna.id, user_id: scarlett.id)

ehlonnanotes = GameMasterNotebook.create(user_id: haley.id, game_id: ehlonna.id, name:"Ehlonna Notes")

# GameMasterNote.create(gm_notebook_id: ehlonnanotes.id, title:"outline", content:"magic is illegal, big evil queen invading, king is dying, prince is on the throne in absence of his older twin sister running off to join the pirates, cult is using magic to take back the island, ehlonna is trapped!", visible_to_players: false)
# GameMasterNote.create(gm_notebook_id: ehlonnanotes.id, title:"session zero", content:"Taro, Milo, Ellis, they're all great", visible_to_players: true)