class AuthorsController < ApplicationController
  def new
    @author = Author.new
  end
  
  def create
    @author = Author.new(params.require(:author).permit(:first_name, :last_name, :homepage))
  
    if @author.save
      redirect_to @author
    else
      render 'new'

    end
  end
  def index
    @authors = Author.all
  end
  
  def show
    @author = Author.find(params[:id])
  end
end

