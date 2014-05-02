class TeamController < ApplicationController

	def new
		@team = Team.new
		#if signed_in?
		#	@team = Team.new
		#else
			#redirect_to signin_path
		#end
	end

	def create
	  	@team = Team.new(user_params)
	  	if @team.save
	  		flash[:success] = "You have successfully made a team!"
	  		redirect_to @user
	  	else
	  		render 'new'
	  	end
  	end

  	def show
  	@team = Team.find(params[:id])
  end

  	private

	  	def user_params
	  		params.require(:user).permit(:name)
	  	end

end
