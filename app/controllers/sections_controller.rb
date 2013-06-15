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

	def create
		@section = Section.new(params[:section])
		if @section.save
			redirect_to(:action => 'list')
		else
			render('new')
		end
	end

	def edit
		@section = Section.find(params[:id])
	end

	#def update






end
