get '/restaurants' do
  @restaurants = Restaurant.all
  erb :"restaurants/index"
end


##create
get '/restaurants/new' do
  authenticate!
  @restaurant = Restaurant.new
  erb :"restaurants/new"
end

##show
get '/restaurants/:id' do
  @restaurant = Restaurant.find_by(id: params[:id])
  erb :"/restaurants/show"
end


post '/restaurants' do
  authenticate!
  @restaurant = Restaurant.new(params[:restaurant])

  if @restaurant.save
    redirect '/restaurants'
  else
    @errors = @restaurant.errors.full_messages
    erb :"restaurants/new"
  end
end


##Edit
get '/restaurants/:id/edit' do
  @restaurant = Restaurant.find_by(id: params[:id])
  erb :'restaurants/edit'
end

put '/restaurants/:id' do
  authenticate!
  @restaurant = Restaurant.find_by(id: params[:id])
  # authorize!(@restaurant.user)

  if @restaurant.update(params[:restaurant])
    redirect "/restaurants/#{@restaurant.id}"
  else
    @errors = @restaurant.errors.full_messages
    erb :"restaurants/edit"
  end
end

delete '/restaurants/:id' do
  authenticate!
  @restaurant = Restaurant.find_by(id: params[:id])
  # authorize!(@restaurant.user)
  @restaurant.destroy
  redirect '/restaurants'
end





