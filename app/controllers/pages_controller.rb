class PagesController < ApplicationController
  def home
    @cats = Cat.all
    @todos = Todo.all
    @users = User.all
  end

  def new
  end

  def create
    Cat.create(:name => params[:name])
    Todo.create(:tasks => params[:tasks],
                 :finished => params[:finished])
    User.create(:username => params[:username],
                :email => params[:email],
                :age => params[:age])
    redirect_to '/'
  end
end
