class ApiController < ApplicationController
	def category
		@article = Article.all
	    render json: @article
	end
end
