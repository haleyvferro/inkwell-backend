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
carlos = User.create(email:'rose3232@fake.com', username:'jcGonzalez', password:'password')

ehlonna = Game.create(gm_id: haley.id, game_name:"Ehlonna's Paradise", game_description:"On this island nicknamed 'Ehlonna's Paradise': Magic is illegal, the monarchy is on their way out, a cult is running rampant, a foreign Queen is invading, and Ehlonna (the island's resident goddess) nowhere to be found.")

motw = Game.create(gm_id: emily.id, game_name:"MOTW", game_description:"Running around fighting zombies and monsters and a librarian")

harvest = Game.create(gm_id: haley.id, game_name:"Harvest Moon Knockoff", game_description:"what it says on the tin")

GamePlayer.create(game_id: ehlonna.id, user_id: emily.id)
GamePlayer.create(game_id: ehlonna.id, user_id: kelsy.id)
GamePlayer.create(game_id: ehlonna.id, user_id: scarlett.id)

GamePlayer.create(game_id: motw.id, user_id: kelsy.id)
GamePlayer.create(game_id: motw.id, user_id: scarlett.id)
GamePlayer.create(game_id: motw.id, user_id: haley.id)

GamePlayer.create(game_id: harvest.id, user_id: kelsy.id)
GamePlayer.create(game_id: harvest.id, user_id: scarlett.id)
GamePlayer.create(game_id: harvest.id, user_id: emily.id)
GamePlayer.create(game_id: harvest.id, user_id: carlos.id)

ehlonnanotes = GameMasterNotebook.create(user_id: haley.id, game_id: ehlonna.id, name:"Ehlonna Notes")

GameMasterNote.create(game_master_notebook_id: ehlonnanotes.id, title: "first note", content: "this is the very first note", visible_to_players: true)
GameMasterNote.create(game_master_notebook_id: ehlonnanotes.id, title: "second note", content: "this is the very second note", visible_to_players: true)
GameMasterNote.create(game_master_notebook_id: ehlonnanotes.id, title: "third note", content: "this is the very third note", visible_to_players: true)
GameMasterNote.create(game_master_notebook_id: ehlonnanotes.id, title: "fourth note", content: "this is the very fourth note", visible_to_players: true)
GameMasterNote.create(game_master_notebook_id: ehlonnanotes.id, title: "fifth note", content: "this is the very fifth note", visible_to_players: true)
GameMasterNote.create(game_master_notebook_id: ehlonnanotes.id, title: "sixth note", content: "this is the very sixth note", visible_to_players: true)
GameMasterNote.create(game_master_notebook_id: ehlonnanotes.id, title: "seventh note", content: "this is the very seventh note", visible_to_players: true)
GameMasterNote.create(game_master_notebook_id: ehlonnanotes.id, title: "eighth note", content: "this is the very eighth note", visible_to_players: true)
GameMasterNote.create(game_master_notebook_id: ehlonnanotes.id, title: "ninth note", content: "this is the very ninth note", visible_to_players: true)
GameMasterNote.create(game_master_notebook_id: ehlonnanotes.id, title: "tenth note", content: "this is the very tenth note", visible_to_players: true)

motwnotes = GameMasterNotebook.create(user_id: emily.id, game_id: motw.id, name:"Monster of the Week Notes")

GameMasterNote.create(game_master_notebook_id: motwnotes.id, title: "first note", content: "this is the very first note", visible_to_players: true)
GameMasterNote.create(game_master_notebook_id: motwnotes.id, title: "second note", content: "this is the very second note", visible_to_players: true)
GameMasterNote.create(game_master_notebook_id: motwnotes.id, title: "third note", content: "this is the very third note", visible_to_players: true)
GameMasterNote.create(game_master_notebook_id: motwnotes.id, title: "fourth note", content: "this is the very fourth note", visible_to_players: true)
GameMasterNote.create(game_master_notebook_id: motwnotes.id, title: "fifth note", content: "this is the very fifth note", visible_to_players: true)
GameMasterNote.create(game_master_notebook_id: motwnotes.id, title: "sixth note", content: "this is the very sixth note", visible_to_players: true)
GameMasterNote.create(game_master_notebook_id: motwnotes.id, title: "seventh note", content: "this is the very seventh note", visible_to_players: true)
GameMasterNote.create(game_master_notebook_id: motwnotes.id, title: "eighth note", content: "this is the very eighth note", visible_to_players: true)
GameMasterNote.create(game_master_notebook_id: motwnotes.id, title: "ninth note", content: "this is the very ninth note", visible_to_players: true)
GameMasterNote.create(game_master_notebook_id: motwnotes.id, title: "tenth note", content: "this is the very tenth note", visible_to_players: true)

harvestnotes = GameMasterNotebook.create(user_id: haley.id, game_id: harvest.id, name:"Harvest Notes")

GameMasterNote.create(game_master_notebook_id: harvestnotes.id, title: "first note", content: "this is the very first note", visible_to_players: true)
GameMasterNote.create(game_master_notebook_id: harvestnotes.id, title: "second note", content: "this is the very second note", visible_to_players: true)
GameMasterNote.create(game_master_notebook_id: harvestnotes.id, title: "third note", content: "this is the very third note", visible_to_players: true)
GameMasterNote.create(game_master_notebook_id: harvestnotes.id, title: "fourth note", content: "this is the very fourth note", visible_to_players: true)
GameMasterNote.create(game_master_notebook_id: harvestnotes.id, title: "fifth note", content: "this is the very fifth note", visible_to_players: true)
GameMasterNote.create(game_master_notebook_id: harvestnotes.id, title: "sixth note", content: "this is the very sixth note", visible_to_players: true)
GameMasterNote.create(game_master_notebook_id: harvestnotes.id, title: "seventh note", content: "this is the very seventh note", visible_to_players: true)
GameMasterNote.create(game_master_notebook_id: harvestnotes.id, title: "eighth note", content: "this is the very eighth note", visible_to_players: true)
GameMasterNote.create(game_master_notebook_id: harvestnotes.id, title: "ninth note", content: "this is the very ninth note", visible_to_players: true)
GameMasterNote.create(game_master_notebook_id: harvestnotes.id, title: "tenth note", content: "this is the very tenth note", visible_to_players: true)

taro = CharacterNotebook.create(user_id: kelsy.id, game_id: ehlonna.id, name: 'Taro')
CharacterNote.create(character_notebook_id: taro.id, title: "first note", content: "this is the very first note", visible_to_other_players: true)
CharacterNote.create(character_notebook_id: taro.id, title: "second note", content: "this is the very second note", visible_to_other_players: true)
CharacterNote.create(character_notebook_id: taro.id, title: "third note", content: "this is the very third note", visible_to_other_players: true)
CharacterNote.create(character_notebook_id: taro.id, title: "fourth note", content: "this is the very fourth note", visible_to_other_players: true)
CharacterNote.create(character_notebook_id: taro.id, title: "fifth note", content: "this is the very fifth note", visible_to_other_players: true)

ellis = CharacterNotebook.create(user_id: emily.id, game_id: ehlonna.id, name: 'Ellis')
CharacterNote.create(character_notebook_id: ellis.id, title: "first note", content: "this is the very first note", visible_to_other_players: true)
CharacterNote.create(character_notebook_id: ellis.id, title: "second note", content: "this is the very second note", visible_to_other_players: true)
CharacterNote.create(character_notebook_id: ellis.id, title: "third note", content: "this is the very third note", visible_to_other_players: true)
CharacterNote.create(character_notebook_id: ellis.id, title: "fourth note", content: "this is the very fourth note", visible_to_other_players: true)
CharacterNote.create(character_notebook_id: ellis.id, title: "fifth note", content: "this is the very fifth note", visible_to_other_players: true)

milo = CharacterNotebook.create(user_id: scarlett.id, game_id: ehlonna.id, name: 'Milo')
CharacterNote.create(character_notebook_id: milo.id, title: "first note", content: "this is the very first note", visible_to_other_players: true)
CharacterNote.create(character_notebook_id: milo.id, title: "second note", content: "this is the very second note", visible_to_other_players: true)
CharacterNote.create(character_notebook_id: milo.id, title: "third note", content: "this is the very third note", visible_to_other_players: true)
CharacterNote.create(character_notebook_id: milo.id, title: "fourth note", content: "this is the very fourth note", visible_to_other_players: true)
CharacterNote.create(character_notebook_id: milo.id, title: "fifth note", content: "this is the very fifth note", visible_to_other_players: true)

jd = CharacterNotebook.create(user_id: kelsy.id, game_id: motw.id, name: 'JD')
aspen = CharacterNotebook.create(user_id: scarlett.id, game_id: motw.id, name: 'Aspen')
toto = CharacterNotebook.create(user_id: haley.id, game_id: motw.id, name: 'Toto')

jox = CharacterNotebook.create(user_id: kelsy.id, game_id: harvest.id, name: 'Joxter')
cherry = CharacterNotebook.create(user_id: emily.id, game_id: harvest.id, name: 'Cherry')
arnie = CharacterNotebook.create(user_id: scarlett.id, game_id: harvest.id, name: 'Arnie')
x = CharacterNotebook.create(user_id: carlos.id, game_id: harvest.id, name: 'X')

# GameMasterNote.create(gm_notebook_id: ehlonnanotes.id, title:"outline", content:"magic is illegal, big evil queen invading, king is dying, prince is on the throne in absence of his older twin sister running off to join the pirates, cult is using magic to take back the island, ehlonna is trapped!", visible_to_players: false)
# GameMasterNote.create(gm_notebook_id: ehlonnanotes.id, title:"session zero", content:"Taro, Milo, Ellis, they're all great", visible_to_players: true)