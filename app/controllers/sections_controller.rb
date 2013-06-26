class SectionsController < ApplicationController

	layout 'admin'

	def index
		list
		render('list')
	end

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
			flash[:notice] = "Your new Section was saved!"
			redirect_to(:action => 'list')
		else
			render('new')
		end
	end

	def edit
		@section = Section.find(params[:id])
	end

	#fix bug in update action -> doesn't find the ID - WAT! 
	def update
		@section = Section.find(params[:id])
		if @section.update_attributes(params[:section])
			flash[:notice] = "New Section created"
			redirect_to(:action => 'show', :id => @section.id)
		else
			render('edit')
		end
	end

	def destroy
		@section = Section.find(params[:id]).destroy
		flash[:notice] = "Your section was deleted!"
		redirect_to(:action => "list")
	end




end
