class MoviesController < ApplicationController
  def index
    @movies = Movie.all

    render({template: 'movies/index'})
  end

  def movie_details
    @movie = Movie.where({ :id => params.fetch(:an_id) }).first
    render({template: 'movies/show'})
  end

end
