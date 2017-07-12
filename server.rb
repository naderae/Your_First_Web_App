require 'sinatra'

get '/' do
  redirect to('/home')
end

get '/home' do
  erb :index
end

get'/portfolio' do
  erb :gallery
end

get '/about_me' do
  @skills = ['git', 'HTML', 'CSS', 'Ruby']
  @interests = ['cats', 'art', 'music', 'films', 'coffee']
  erb:me
end

get '/favourites' do
  @fav_links = ['google.com', 'nba.com', 'bleacherreport.com', 'goal.com', 'brobible.com']
  erb :fav_links
end
