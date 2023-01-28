require 'sinatra'

get '/' do
  erb :index
end

get '/contacts' do
  @title = 'Contacts'
  @message = 'Phone number: 11111'
  erb :message
end

get '/faq' do
  @title = 'FAQ'
  @message = "Under construction"
  erb :message
end

get '/smth' do
  @title = 'Something'
  @message = 'Blala'
  erb :message
end

post '/' do
  @login = params[:aaa]
  @password = params[:bbb]

  erb :index

  if @login == 'admin' && @password == 'secret'
    erb :welcome
  elsif @login == 'admin' && @password == "admin"
    @message = 'Nice try! Access denied :D'
    erb :index
  else
    @message = 'Access Denied'
    erb :index
  end

  
end
