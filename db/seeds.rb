user_1 = User.create(name: "Nason")
user_2 = User.create(name: "Michael")

team_1 = Team.create(name: "Raiz")
team_2 = Team.create(name: "Rails")

stock_1 = Stock.create(name: "Stock numero uno")
stock_2 = Stock.create(name: "Stock numero duo")

# create for each entity initial amount for the purpose of this application
entitites = [user_1, user_2, team_1, team_2, stock_1, stock_2]
entitites.each do |entity|
  entity.wallet.credits.create(amount: 100)
end
