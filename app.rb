#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:backery.db"

class Product < ActiveRecord::Base
end

class Order < ActiveRecord::Base
end

get '/' do
	erb :index 
end

get '/about' do
	s=0
	(0..10).each do |i|
  	s=s+i
  	end
 	

 	erb :about
end

get '/menu' do
	@products = Product.order('created_at DESC')
	erb :menu
end

get '/order' do
  erb :order
end

get '/pay' do
  erb :pay
end


get '/delivery' do
  erb :delivery
end

get '/contacts' do
  erb :contacts
end

get '/product/:id' do
	@product= Product.find(params[:id])
	erb :product
end

post '/cart' do

	# получаем список параметров и разбираем их

	@orders_input = params[:orders]
	@items = parse_orders_input @orders_input

	# вывод сообщения о том что корзина пуста

	if @items.length == 0
		return erb :cart_is_empty
	end

	# выводим список продуктов в корзине

	@items.each do |item|
		item[0] = Product.find(item[0])
	end

	# возвращаем сообщение по умолчанию
	erb :cart
end

def parse_orders_input orders_input
	s1 = orders_input.split(/,/)
	arr = []

	s1.each do |x|
		s2 = x.split(/\=/)

		s3 = s2[0].split(/_/)
		key = s3[1]

		id = s3[1]
		cnt = s2[1]

		arr2 = [id, cnt]
		arr.push arr2
	end

	return arr
end

def get_db
	db = SQLite3::Database.new 'backery.db'
	db.results_as_hash=true
	return db
end

post '/place_order' do
	@o = Order.new params[:order]
	erb :order_placed
end

get '/showorders'do
	db=get_db
	@results = db.execute 'select * from Orders order by id desc'
	erb :showorders                                     
end
