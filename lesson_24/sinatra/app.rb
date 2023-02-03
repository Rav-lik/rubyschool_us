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
  @error = 'something!!!'

  erb :about
end

get '/contacts' do
  erb :contacts
end

post '/contacts' do
  @feedback = params[:feedback]
  @email = params[:email]
  
  input = File.open('./public/feedbacks.txt', 'a+')
  input.puts @feedback
  input.close

  @title = 'Thank you'
  @message = 'We appreciated you for feedback. We will get better'

  erb :message
end

get '/visit' do
  erb :visit
end

post '/visit' do
  validation_error = {
    visitor_name: 'Enter name',
    phone: 'Enter phone',
    date_time: 'Enter date and time',
    barber: 'You did\'t choose a barber',
    colorpicker: 'You didn\'t choose a color for your hair'
  }
  # my method without validation_error
  # params.each do |k, v|
  #   if v.empty?
  #     @error = "You didn't fill the form right. You lose field #{k.to_s.split('_').join(' ').capitalize}"
  #     return erb :visit
  #   end
  # end
  #
  # Метод Ромы
  # validation_error.each do |key, err_text|
  #   if params[key].empty? || params[key] == 'default'
  #     @error = "You didn't fill the form right. #{err_text}"
  #     return erb :visit
  #   end
  # end


  # Метод Хан Соло
  @error = validation_error.select { |key, _| params[key] == '' }.values.join(", ")

  return erb :visit if @error != ''

  @visitor_name = params[:visitor_name]
  @phone = params[:phone]
  @date_time = params[:date_time]
  @barber = params[:barber]
  @colorpicker = params[:colorpicker]

  input = File.open('./public/users.txt', 'a+')
  input.puts "User: #{@visitor_name}, phone: #{@phone}, date and time: #{@date_time}"  + (@barber != 'default' ? ", barber: #{@barber}" : '.')
  input.close

  @title = 'Thank you!'
  @message = "Dear #{@visitor_name}, we'll be waiting for you at #{@date_time}" + ", for painting at #{@colorpicker}" + (@barber != 'default' ? ", your barber is #{@barber}" : "You don't choose a barber.")

  erb :message
end

get '/visit/users' do
  @output_users = File.open('./public/users.txt', 'r')

  erb :users
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
