class PagesController < ApplicationController

	#def index

	def list
		@page = Page.order("pages.position ASC")
	end

	def show
		@page = Page.find(params[:id])
	end













end
