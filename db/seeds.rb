
GameHole.destroy_all
Game.destroy_all
Hole.destroy_all
Player.destroy_all

p1 = Player.create(name: "Sofia Fred")
g1 = Game.create(score: 0, player: p1)

h1 = Hole.create(name: "1", par: 2, stroke: 4)
h2 = Hole.create(name: "2", par: 2, stroke: 3)
h3 = Hole.create(name: "3", par: 2, stroke: 5)
h4 = Hole.create(name: "4", par: 2, stroke: 2)
h5 = Hole.create(name: "5", par: 2, stroke: 3)
h6 = Hole.create(name: "6", par: 2, stroke: 4)
h7 = Hole.create(name: "7", par: 2, stroke: 2)
h8 = Hole.create(name: "8", par: 2, stroke: 4)
h9 = Hole.create(name: "9", par: 2, stroke: 2)

gh1 = GameHole.create(game: g1, hole: h1)
gh2 = GameHole.create(game: g1, hole: h2)
gh3 = GameHole.create(game: g1, hole: h3)
gh4 = GameHole.create(game: g1, hole: h4)
gh5 = GameHole.create(game: g1, hole: h5)
gh6 = GameHole.create(game: g1, hole: h6)
gh7 = GameHole.create(game: g1, hole: h7)
gh8 = GameHole.create(game: g1, hole: h8)
gh9 = GameHole.create(game: g1, hole: h9)

