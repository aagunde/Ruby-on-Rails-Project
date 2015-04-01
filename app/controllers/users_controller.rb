class UsersController < ApplicationController
	def show
    	@user = User.find(params[:id])
  	end

  	def new
  		@user = User.new
  	end

  	def create
    @user = User.new(user_params)
    if @user.save
	  log_in @user
      redirect_to @user
      flash[:success] = "Welcome to the Eventino!"
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :age, :gender, :date_of_birth, :home_address, :contact_no, :institute_name, :institute_address, :email_id, :password, :password_confirmation)
    end
end
