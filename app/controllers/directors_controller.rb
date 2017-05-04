class DirectorsController < ApplicationController
  def index
    @directors = Director.all
    render("index")
  end

  def show
    @director = Director.find(params[:id])
    render("show")
  end

  def new_form
    render("new_form")
  end

  def create_row
    @director = Director.new
    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]
    @director.save
    render("show")
  end

  def edit_form
    @director = Director.find(params[:id])
  end

  def update_row
    @director = Director.find(params[:id])
    p=@director
    p.dob = params[:dob]
    p.name = params[:name]
    p.bio = params[:bio]
    p.image_url = params[:image_url]
    p.save

    render("show")
  end

  def destroy
    @director = Director.find(params[:id])

    @director.destroy
  end
end
