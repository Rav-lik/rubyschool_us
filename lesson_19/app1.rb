require 'sinatra'

get '/' do
  erb :index
end

post '/' do
  @login = params[:aaa]
  @password = params[:bbb]

  erb :index

  if @login == 'admin' && @password == 'secret'
    erb :welcome
  else
    erb :bye
  end

  
end
