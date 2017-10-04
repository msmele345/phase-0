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
    erb :"session/new"
  end
end
