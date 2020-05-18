# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(name: "mustafa", password: "mustafa", password_confirmation: "mustafa", email: "mustafa@email.com")


p1 = Portfolio.create(name: "stocks long term", user_id: u1.id)
p2 = Portfolio.create(name: "crypto", user_id: u1.id)
p3 = Portfolio.create(name: "forex", user_id: u1.id)


s1 = Stock.create(open: 125, units: 2.4, symbol: "AMZ", portfolio_id: p1.id)
s2 = Stock.create(open: 28, units: 5, symbol: "AAPL", portfolio_id: p1.id)
s3 = Stock.create(open: 35, units: 8, symbol: "FB", portfolio_id: p1.id)
s4 = Stock.create(open: 158, units: 2.4, symbol: "ZM", portfolio_id: p2.id)
s5 = Stock.create(open: 271, units: 3.95, symbol: "MA", portfolio_id: p2.id)
s6 = Stock.create(open: 22, units: 45, symbol: "BAC", portfolio_id: p2.id)
s1 = Stock.create(open: 125, units: 2.4, symbol: "AMZ", portfolio_id: p1.id)
s2 = Stock.create(open: 28, units: 5, symbol: "AAPL", portfolio_id: p1.id)
s3 = Stock.create(open: 35, units: 8, symbol: "FB", portfolio_id: p1.id)
s4 = Stock.create(open: 158, units: 2.4, symbol: "ZM", portfolio_id: p2.id)
s5 = Stock.create(open: 271, units: 3.95, symbol: "MA", portfolio_id: p2.id)
s6 = Stock.create(open: 22, units: 45, symbol: "BAC", portfolio_id: p2.id)
s1 = Stock.create(open: 125, units: 2.4, symbol: "AMZ", portfolio_id: p1.id)
s2 = Stock.create(open: 28, units: 5, symbol: "AAPL", portfolio_id: p1.id)
s3 = Stock.create(open: 35, units: 8, symbol: "FB", portfolio_id: p1.id)
s4 = Stock.create(open: 158, units: 2.4, symbol: "ZM", portfolio_id: p2.id)
s5 = Stock.create(open: 271, units: 3.95, symbol: "MA", portfolio_id: p2.id)
s6 = Stock.create(open: 22, units: 45, symbol: "BAC", portfolio_id: p2.id)



Portfolio.create

raccomandation = Recommendation.create(name: 'dashboard') 

rs1 = RecommendedStock.create(price: 123, symbol: "AMZ", recommendation_id: raccomandation.id)
rs2 = RecommendedStock.create(price: 300, symbol: "AAPL", recommendation_id: raccomandation.id)
rs3 = RecommendedStock.create(price: 230.5, symbol: "FB", recommendation_id: raccomandation.id)
rs4 = RecommendedStock.create(price: 100, symbol: "ZM", recommendation_id: raccomandation.id)