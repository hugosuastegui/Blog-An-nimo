get '/' do
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  erb :index
end

post '/write_post' do 
  a = params[:title]
  b = params[:content]
  c = params[:tags]
  post = Post.create(title: a, description: b)
  c_array = c.split(",")
  c_array.each do |c|
    post.tags << Tag.create(name: c)
  end 
  erb :index
end

get '/show_all_posts' do 
  
end

get '/show_a_post' do 
  
end

get '/show_all_posts' do 
  
end

get '/edit_a_post' do 
  
end

get '/delete_a_post' do 

end
