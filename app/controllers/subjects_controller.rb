class SubjectsController < ApplicationController

	#force our list page to render in case somebody goes directly to the url ./subjects (otherwise we'd get an error)
	def index
		list
		render ('list')
	end

	#instance variable in list action is plural!
	def list
		@subjects = Subject.order("subjects.position ASC")
	end

	#instance variable in show action is singular!
	def show
		@subject = Subject.find(params[:id])
	end

	def create
		@subject = Subject.new(:name => params[:name], :position => params[:position], :visible => params[:visible])
	end

end
