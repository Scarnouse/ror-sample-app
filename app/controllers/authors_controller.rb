class AuthorsController < ApplicationController

  before_action :get_author, only: [:show, :edit, :update, :destroy] 
  
  def index
    @authors = Author.find_by_user(current_user.id)
  end

  def show
  end

  def new
    @author = Author.new
  end

  def create
    @author = current_user.authors.new(author_params)

    if(@author.save)
      redirect_to authors_path
    else
      render 'authors/new'
    end
  end

  def edit
  end

  def update
    if(@author.update_attributes(author_params))
      redirect_to authors_path
    else
      render 'author/edit'
    end
  end

  def destroy
    if(@author.destroy)
      redirect_to authors_path
    end
  end

  private
  def author_params
    params.require(:author).permit(:name)
  end

  def get_author
    @author = Author.find(params[:id])
  end
end
