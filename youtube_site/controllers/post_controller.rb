class PostController<Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), "..")

  set :view, Proc.new { File.join(root, "views") }


  configure:development do
    register Sinatra::Reloader
  end
   
  get "/" do

    @posts = $posts
    @titleHome="Block Posts"
    erb :'posts/index'
  end

  get "/:id/edit" do
    id = params[:id].to_i

    @post = $posts[id]
  
    erb :'posts/edit'
  end
  
  get '/new' do
    "Hello World"
  end

 
  get '/:id' do
    id = params[:id].to_i

    @post = $posts[id]

      erb :'posts/show'


  end

end


