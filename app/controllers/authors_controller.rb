class AuthorsController < ApplicationController
  def new
  end

  def create
    #render plain: params[:author].inspect

    @author = Author.new(author_params)

    if @author.save
      redirect_to @author
    else
      render 'new'
    end
  end

  def show
    @author = Author.find(params[:id])
  end

  def index
    @authors = Author.all
  end

  private
    def author_params
      return params.require(:author).permit(:first_name, :last_name, :homepage)
    end
end
