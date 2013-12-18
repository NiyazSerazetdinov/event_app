class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @user = User.all
  end

  def show
    @user = User.find(params[ :id])
    #@events = @events.paginate(page: params [:page])
  end

end
