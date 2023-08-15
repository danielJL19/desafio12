class DocumentaryFilmsController < ApplicationController
  def index
    @documentaryFilms = DocumentaryFilm.all
  end

  def create
    @documentaryFilm = DocumentaryFilm.new(documentaryFilm_params)
    if @documentaryFilm.save 
      redirect_to documentary_films_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @documentaryFilm = DocumentaryFilm.new
  end
  private
  def documentaryFilm_params
    params.require(:documentary_film).permit(:name,:synopsis,:director)
  end
end
