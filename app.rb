#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :database, "sqlite3:backery.db"

class Product < ActiveRecord::Base
	
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
  erb
end