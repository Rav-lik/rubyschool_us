require 'sinatra'

get '/' do
  erb :index  
end

post '/' do
  file = File.open('file.txt', 'a')
  @user_name = params[:user_name]
  @phone = params[:phone]
  @date_time = params[:date_time]

  @title = 'Thank you!'
  @message = "Dear #{@user_name}, we'll be waiting for you at #{@date_time}"

  file.puts "User: #{@user_name}, phone: #{@phone}, date and time: #{@date_time}"
  file.close
  erb :message
end

get '/admin' do
  @message = 'Print login and password for access:'

  erb :admin
end

post '/admin' do
  @admin_name = params[:admin_name]
  @password = params[:password]
 
  erb :admin

  if @admin_name == 'admin' && @password == 'secret'
    @message = 'Read'
    @logfile = File.open('file.txt', 'r')
    # @logfile = @f.read
    erb :admin
    # @f.close
        
  else
    @message = 'Access denied! Try again'
   
    erb :admin
  end

end
