##Login

get '/sessions/new' do
  erb :"session/new"
end

post '/sessions' do
  @user = User.find_by(email: params[:email])

  if @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
    redirect '/'
  else
    @message = "Either you username or password was wrong"
    erb :"session/new"
  end

end
##Logout
delete '/sessions' do
  session.delete(:user_id)
  redirect '/'
end

##error handaling
##Need to improve on authorization so I can incorporate this
get '/not_authorized' do
  erb :not_authorized
end
