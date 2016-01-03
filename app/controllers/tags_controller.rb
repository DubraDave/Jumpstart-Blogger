class TagsController < ApplicationController
	def index
		@tags = Tag.all
	end

	def edit
		@tag = Tag.find(params[:id])
	end

	def show
		@tag = Tag.find(params[:id])
	end

	def destroy
		@tag = Tag.find(params[:id])
		@tag.destroy
		flash.notice = "Tag Destroyed (this action cannot be undone)"
		redirect_to tags_path
	end
end
