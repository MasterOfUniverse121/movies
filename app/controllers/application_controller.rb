class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def show
    @movie = Movie.find_by_id(params['id'])
end
  
def new
    
end
  
def edit
  @movie = Movie.find_by_id(params['id'])
end
  
def create
    g = Movie.new
    g.url = params['url']
    g.save
    redirect_to "/movies/#{g.id}"
end
    
def update
    g = Movie.find_by_id(params['id'])
    g.url = params['url']
    g.save
    redirect_to "/movies/#{g.id}"
end
  
def destroy
    g = Movie.find_by_id(params['id'])
    g.destroy
    redirect_to "/movies"
end
  
def index
  @movie = Movie.all
end
end
