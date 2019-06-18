

Game.destroy_all
Hole.destroy_all
Player.destroy_all

p1 = Player.create(name: "Sofia Fred")
g1 = Game.create(score: 0, player: p1)

h1 = Hole.create(game: g1, player: p1, par: 2, stroke: 4)



