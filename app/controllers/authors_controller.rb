class AuthorsController < ApplicationController
    def new
        @author = Author.new
        render :new
      end
      def create
        @author = Author.new(params.require(:author).permit(:first_name, :last_name, :homepage))
    
        @author.save
        redirect_to @author
      end
      def index
        @authors = Author.all
      end
      def show
        @author = Author.find(params[:id])
      end
end
