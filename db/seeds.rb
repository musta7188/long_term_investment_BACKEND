# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name: "mustafa", password_digest: "mustafa", email: "mustafa@email.com")


p1 = Portfolio.create(name: "stocks long term", user_id: u1.id)
p2 = Portfolio.create(name: "crypto", user_id: u1.id)
p3 = Portfolio.create(name: "forex", user_id: u1.id)


s1 = Stock.create(price: 125, symbol: "AMZ")
s2 = Stock.create(price: 28, symbol: "APP")
s3 = Stock.create(price: 35, symbol: "FB")

ps1 = PortfolioStock.create(portfolio_id: p1.id, stock_id: s1.id )
ps2 = PortfolioStock.create(portfolio_id: p1.id, stock_id: s2.id )
ps3 = PortfolioStock.create(portfolio_id: p1.id, stock_id: s3.id )

raccomandation = Recommendation.create(name: 'dashboard') 

rs1 = RecommendedStock.create(price: 123, symbol: "ZOOM", recommendation_id: raccomandation.id)
rs2 = RecommendedStock.create(price: 33, symbol: "FTSE100", recommendation_id: raccomandation.id)
rs3 = RecommendedStock.create(price: 55, symbol: "NSDQ100", recommendation_id: raccomandation.id)