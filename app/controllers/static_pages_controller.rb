class StaticPagesController < ApplicationController
	def index
		if session[:user_id]
			@user = User.find(session[:user_id])
		end
	end
	def contato
	end
	def sobre
	end
end
