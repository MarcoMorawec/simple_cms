class SectionsController < ApplicationController

	#def index

	def list
		@section = Section.order("sections.position ASC")
	end

	def show
		@section = Section.find(params[:id])
	end

	def new
		@section = Section.new
	end

	#def create
	#end






end
