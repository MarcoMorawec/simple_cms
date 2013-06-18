class PagesController < ApplicationController

	def index
		list
		render('list')
	end

	def list
		@page = Page.order("pages.position ASC")
	end

	def show
		@page = Page.find(params[:id])
	end













end
