class DirectorsController < ApplicationController
  def index
    @directors = Director.all
    render(template: 'directors/index')
  end

  def youngest
    youngest = Director.where.not(dob: nil).order(dob: :desc).first
    redirect_to("/directors/#{youngest[:id]}")
  end
  
  def eldest
    eldest = Director.where.not(dob: nil).order(dob: :asc).first
    redirect_to("/directors/#{eldest[:id]}")
  end

  def director_details
    @directors = Director.all
    @director = Director.find(params[:director_id])
    render(template: 'directors/show')
  end
end
