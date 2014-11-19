class ApiController < ApplicationController
	def category
		@article = Article.category.(category: params[:tag])
	    render json: @article
	end
end
