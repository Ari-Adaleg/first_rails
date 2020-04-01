class PicturesController < ApplicationController
	def index
		@pictures = Picture.all
	end

	def show
    	@picture = Picture.find(params[:id])
	end

	def new
	end

	def create
		render html: "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
	end
end
