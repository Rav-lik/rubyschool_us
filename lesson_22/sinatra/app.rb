#encoding: utf-8
require 'rubygems'
require 'sinatra'

configure do
  enable :sessions
end

helpers do
  def username
    session[:identity] ? session[:identity] : 'Hello stranger'
  end
end

before '/visit/*' do
  unless session[:identity] == 'admin' && session[:password] == 'secret'
    session[:previous_url] = request.path
    @error = 'Sorry, you need to be logged in to visit ' + request.path
    halt erb(:login_form)
  end
end

get '/' do
	erb "Hello! Yo! Aloha! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"
end

get '/about' do
  erb :about
end

get '/contacts' do
  erb :contacts
end

get '/visit' do
  erb :visit
end

post '/visit' do
  @name = params[:name]
  @phone = params[:phone]
  @date_time = params[:date_time]
  @barber = params[:barber]
  input = File.open('./public/users.txt', 'a+')
  input.puts "User: #{@name}, phone: #{@phone}, date and time: #{@date_time}"  + (@barber != 'default' ? ", barber: #{@barber}" : '.')
  input.close

  @title = 'Thank you!'
  @message = "Dear #{@name}, we'll be waiting for you at #{@date_time}" + (@barber != 'default' ? ", your barber is #{@barber}" : "You don't choose a barber.")

  erb :message
end

get '/visit/users' do
  @output_users = File.open('./public/users.txt', 'r')

  erb :users
end

post '/contacts' do
  @feedback = params[:feedback]
  input = File.open('./public/feedbacks.txt', 'a+')
  input.puts @feedback
  input.close

  @title = 'Thank you'
  @message = 'We appreciated you for feedback. We will get better'

  erb :message
end

get '/login/form' do
  erb :login_form
end

post '/login/attempt' do
  session[:identity] = params['username']
  session[:password] = params['password']
  where_user_came_from = session[:previous_url] || '/'
  redirect to where_user_came_from
end

get '/logout' do
  session.delete(:identity)
  erb "<div class='alert alert-message'>Logged out</div>"
end