class TeamController < ApplicationController

	def new
		if signed_in?
			@team = Team.new
		else
			redirect_to signin_path
		end
	end

end
