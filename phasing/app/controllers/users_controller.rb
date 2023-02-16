class UsersController < ApplicationController
  def index
    # debugger
    @users = User.all 
    render json: @users
  end

  def create
    debugger
    @user = User.new(user_params)

    if @user.save
      redirect_to main_url(@user.id)
    else
      render json: @user.error.full_messages, status: 422
    end

  end

  def show
    # debugger

    @user = User.find(params[:id])
    
    

    render json: @user

    # if @user
    #   redirect_to 
    # else
    #   render json: @user.error.full_messages, status: 404
    # end
    

  end

  def main
    render json: "hello world"
  end

  def user_params
    params.require(:user).permit(:email, :name, :nickname)
  end

  def update
    @user = User.find(params[:id])

    @user.update(user_params)

    render json: @user

    # render json: @user.errors.full_messages
  end

end
